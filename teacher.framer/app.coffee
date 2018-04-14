# page = new PageComponent
# 	scrollVertical: false
# 	width: Screen.width
# 	height: Screen.height
# 	
# Main.parent = page.content
# 
# page.addPage(rj, "right")
# page.addPage(david, "right")
# page.addPage(emily, "right")
# page.addPage(jesse, "right")

#require shake event module
ShakeEvent = require "shakeEvent"

#Flow Component
teacherCycle = new FlowComponent
teacherCycle.showNext(Main)
 
#found shake event on github: https://github.com/RayPS/Framer-Module-ShakeEvent
ShakeEvent.onShake = () ->
	teacherCycle.showNext(Utils.randomChoice([jesse, emily, rj, david]), animate: true)
ShakeEvent.sensitivity = 10
ShakeEvent.throttleInterval = .5


#teacherInfo
davidInfo = 
	firstName: "David"
	lastName: "Slayden"
	title: "Program Director"
	email: "david.slayden@colorado.edu"
	slack: "@davidslayden"
rjInfo =	
	firstName: "RJ"
	lastName: "Duran"
	title: "Critical Making"
	email: "rj.duran@colorado.edu"
	slack: "@rjduran"
emilyInfo =
	firstName: "Emily"
	lastName: "McCammon"
	title: "BookLab"
	email: "emily.mccammon@colorado.edu"
	slack: "@emilymccammon"
jesseInfo =
	firstName: "Jesse"
	lastName: "Weaver"
	title: """Product Innovation
			Re-Studio"""
	email: "jesse.weaver@colorado.edu"
	slack: "@jesseweaver"

#David
firstName = davidInfo.firstName
lastName  = davidInfo.lastName
davidName.text = firstName + " " + lastName
davidTitle.text = davidInfo.title

#RJ
firstName = rjInfo.firstName
lastName  = rjInfo.lastName
rjName.text = firstName + " " + lastName
rjTitle.text = rjInfo.title

#Emily
firstName = emilyInfo.firstName
lastName  = emilyInfo.lastName
emilyName.text = firstName + " " + lastName
emilyTitle.text = emilyInfo.title

#Jesse
firstName = jesseInfo.firstName
lastName  = jesseInfo.lastName
jesseName.text = firstName + " " + lastName
jesseTitle.text = jesseInfo.title

