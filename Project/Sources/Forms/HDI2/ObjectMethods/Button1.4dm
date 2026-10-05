
Form:C1466.nonIndexedResult:=[]

Form:C1466.nonIndexedTimer:=0

If (Form:C1466.trace)
	TRACE:C157
End if 


var $param:={vector: Form:C1466.currentQuestion.Vector; metric: "cosine"; threshold: 0.6}

var $timer:=Current time:C178()

Form:C1466.nonIndexedResult:=ds:C1482.Data.query("NonIndexedVector>=:1 order by NonIndexedVector desc"; $param)

Form:C1466.nonIndexedTimer:=Current time:C178()-$timer