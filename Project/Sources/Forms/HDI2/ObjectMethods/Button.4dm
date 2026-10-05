
Form:C1466.indexedResult:=[]

Form:C1466.indexedTimer:=0

If (Form:C1466.trace)
	TRACE:C157
End if 

var $param:={vector: Form:C1466.currentQuestion.Vector; metric: "cosine"; threshold: 0.6}

var $timer:=Current time:C178()

Form:C1466.indexedResult:=ds:C1482.Data.query("IndexedVector>=:1 order by IndexedVector desc"; $param)

Form:C1466.indexedTimer:=Current time:C178()-$timer