import math
import logging

logger = logging.getLogger()
logger.addHandler(logging.StreamHandler())
logger.setLevel(logging.DEBUG)

class VoltageCurve:
	def __init__(self, time, voltage):
		self._time = [time]
		self._voltage = [voltage]
		
	def add(self, time, voltage):
		self._time.append(time)
		self._voltage.append(voltage)

class CircuitWithSingularState:
	def __init__(self, inductance, resistanceOfInductance, capacity, loadResistance, inputVoltage, outputVoltageInitial):
		alpha = inductance * capacity
		beta = inductance / loadResistance + resistanceOfInductance * capacity
		gamma = resistanceOfInductance / loadResistance + 1
		epsilon = inputVoltage
		
		a = alpha * alpha
		b = beta * beta - 2 * alpha * gamma
		c = gamma * gamma
		firstRootPart = b * b
		secondRootPart = 4 * a * c
		innerRoot = math.sqrt(firstRootPart - secondRootPart)
		
		if b > 0:
			angularFrequency = math.sqrt(((-1) * b + innerRoot) / (2 * a))
		elif innerRoot > b:
			raise NotImplementedError()
		else:
			angularFrequency = math.sqrt(((-1) * b - innerRoot) / (2 * a))

		D = epsilon / gamma
		B = outputVoltageInitial - D
		A = B / beta * (alpha * angularFrequency - gamma / angularFrequency)
		
		self._angularFrequency = angularFrequency
		self._A = A
		self._B = B
		self._D = D
		
	def calculateOutputVoltage(self, t):
		return self._A * math.sin(self._angularFrequency * t) + self._B * math.cos(self._angularFrequency * t) + self._D
		
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
		
	def createCircuit(self, igbtIsOn, initialOutputVoltage):
		if igbtIsOn:
			inputVoltage = self._inputVoltage - self._igbtForwardVoltage
		else:
			inputVoltage = self._diodeForwardVoltage
		
		return CircuitWithSingularState(self._inductance, self._resistanceOfInductance, self._capacity, self._loadResistance, inputVoltage, initialOutputVoltage)
		
	def calculateOutputVoltages(self, startTime, endTime, timeStep):
		current = startTime
		result = VoltageCurve(current, 0)
		igbtIsOn = True
		lastSwitchTime = 0
		currentCircuit = self.createCircuit(igbtIsOn, 0)
		
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
					result.add(current, outputVoltage)
					igbtIsOn = False
					lastSwitchTime = current
					currentCircuit = self.createCircuit(igbtIsOn, outputVoltage)
			else:
				if lastSwitchTime + self._offTime >= next:
					current = next
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					result.add(current, outputVoltage)
				else:
					current = lastSwitchTime + self._offTime
					outputVoltage = currentCircuit.calculateOutputVoltage(current - lastSwitchTime)
					result.add(current, outputVoltage)
					igbtIsOn = True
					lastSwitchTime = current
					currentCircuit = self.createCircuit(igbtIsOn, outputVoltage)
		return result
	

logger.debug("creating circuit")
smallInductance = 2e-3
smallInductanceResistance = 0.4
irg4pc50wForwardVoltage = 2
diodeForwardVoltage = 0.2
capacitor = 100e-6
loadResistance = 10
inputVoltage = 20
onTime = 20e-6
offTime = 134e-6
circuit = CircuitWithFixedTimings(irg4pc50wForwardVoltage, diodeForwardVoltage, smallInductance, smallInductanceResistance, capacitor, loadResistance, inputVoltage, onTime, offTime)
voltageCurve = circuit.calculateOutputVoltages(0, 0.2, 10e-6)

