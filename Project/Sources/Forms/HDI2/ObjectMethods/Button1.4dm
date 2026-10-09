
Form.nonIndexedResult:=[]

Form.nonIndexedTimer:=0

If (Form.trace)
	TRACE
End if 


var $param:={vector: Form.currentQuestion.Vector; metric: "cosine"; threshold: 0.7}

var $timer:=Current time()

Form.nonIndexedResult:=ds.Data.query("NonIndexedVector>=:1 order by NonIndexedVector desc"; $param)

Form.nonIndexedTimer:=Current time()-$timer