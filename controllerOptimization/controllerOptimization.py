import math
import logging
import matplotlib.pyplot as plt

logger = logging.getLogger()
logger.addHandler(logging.StreamHandler())
logger.setLevel(logging.DEBUG)

class VoltageCurve:
	def __init__(self, time, voltage):
		self._time = [time]
		self._voltage = [voltage]
		
	def add(self, time, voltage):
		logger.debug(voltage)
		self._time.append(time)
		self._voltage.append(voltage)

	def plot(self, plot):
		plot.plot(self._time, self._voltage)

class CircuitWithSingularState:
	def __init__(self, inductance, resistanceOfInductance, capacity, loadResistance, inputVoltage, outputVoltageInitial, outputVoltageInitialGradient):
		alpha = 1 / (loadResistance * capacity) + resistanceOfInductance / inductance
		beta = (resistanceOfInductance / loadResistance + 1) / (inductance * capacity)
		gamma = inputVoltage
		
		delta = alpha / (-2)
		epsilonSquared = beta - alpha * alpha / 4
		
		if epsilonSquared <= 0:
			raise NotImplementedError()

		epsilon = math.sqrt(epsilonSquared)
		c1 = outputVoltageInitial - gamma / beta
		c2 = (outputVoltageInitialGradient - c1 * delta) / epsilon
		
		self._c1 = c1
		self._c2 = c2
		self._alpha = alpha
		self._beta = beta
		self._gamma = gamma
		self._delta = delta
		self._epsilon = epsilon
		
	def calculateOutputVoltage(self, t):
		return self._gamma/self._beta + math.exp(self._delta * t) * (self._c1 * math.cos(self._epsilon * t) + self._c2 * math.sin(self._epsilon * t))

	def calculateOutputVoltageGradient(self, t):
		return math.exp(self._delta * t) * ((self._c2 * self._delta - self._c1 * self._epsilon) * math.sin(self._epsilon * t) + (self._c1 * self._delta + self._c2 * self._epsilon) * math.cos(self._epsilon * t))
		
class Circuit:
	def __init__(self, igbtForwardVoltage, diodeForwardVoltage, inductance, resistanceOfInductance, capacity, loadResistance, inputVoltage):
		self._igbtForwardVoltage = igbtForwardVoltage
		self._diodeForwardVoltage = diodeForwardVoltage
		self._inductance = inductance
		self._resistanceOfInductance = resistanceOfInductance
		self._capacity = capacity
		self._loadResistance = loadResistance
		self._inputVoltage = inputVoltage
		
class CircuitWithFixedTimings(Circuit):
	def __init__(self, igbtForwardVoltage, diodeForwardVoltage, inductance, resistanceOfInductance, capacity, loadResistance, inputVoltage, onTime, offTime):
		Circuit.__init__(self, igbtForwardVoltage, diodeForwardVoltage, inductance, resistanceOfInductance, capacity, loadResistance, inputVoltage)
		self._onTime = onTime
		self._offTime = offTime
		
	def createCircuit(self, igbtIsOn, initialOutputVoltage, initialOutputVoltageGradient):
		if igbtIsOn:
			inputVoltage = self._inputVoltage - self._igbtForwardVoltage
		else:
			inputVoltage = self._diodeForwardVoltage
		
		return CircuitWithSingularState(self._inductance, self._resistanceOfInductance, self._capacity, self._loadResistance, inputVoltage, initialOutputVoltage, initialOutputVoltageGradient)
		
	def calculateOutputVoltages(self, startTime, endTime, timeStep):
		current = startTime
		result = VoltageCurve(current, 0)
		igbtIsOn = True
		lastSwitchTime = 0
		currentCircuit = self.createCircuit(igbtIsOn, 0, 0)
		
		while current < endTime:
			next = current + timeStep
			if igbtIsOn:
				if lastSwitchTime + self._onTime >= next:
					current = next
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					result.add(current, outputVoltage)
				else:
					current = lastSwitchTime + self._onTime
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					outputVoltageGradient = currentCircuit.calculateOutputVoltageGradient(current - lastSwitchTime)
					result.add(current, outputVoltage)
					igbtIsOn = False
					lastSwitchTime = current
					currentCircuit = self.createCircuit(igbtIsOn, outputVoltage, outputVoltageGradient)
			else:
				if lastSwitchTime + self._offTime >= next:
					current = next
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					result.add(current, outputVoltage)
				else:
					current = lastSwitchTime + self._offTime
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					outputVoltageGradient = currentCircuit.calculateOutputVoltageGradient(current - lastSwitchTime)
					result.add(current, outputVoltage)
					igbtIsOn = True
					lastSwitchTime = current
					currentCircuit = self.createCircuit(igbtIsOn, outputVoltage, outputVoltageGradient)
		return result	

logger.debug("creating circuit")
smallInductance = 2e-3
smallInductanceResistance = 0.4
irg4pc50wForwardVoltage = 2
diodeForwardVoltage = 0.2
capacitor = 100e-6
loadResistance = 10
inputVoltage = 20
onTime = 100#20e-6
offTime = 0#134e-6
circuit = CircuitWithFixedTimings(irg4pc50wForwardVoltage, diodeForwardVoltage, smallInductance, smallInductanceResistance, capacitor, loadResistance, inputVoltage, onTime, offTime)
#voltageCurve = circuit.calculateOutputVoltages(0, 0.2, 10e-6)
voltageCurve = circuit.calculateOutputVoltages(0, 10e-3, 1e-4)

figure, plots = plt.subplots(1, 1)
voltageCurve.plot(plots)

