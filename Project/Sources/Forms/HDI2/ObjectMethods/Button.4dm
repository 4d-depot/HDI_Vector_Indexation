
Form.indexedResult:=[]

Form.indexedTimer:=0

If (Form.trace)
	TRACE
End if 

var $param:={vector: Form.currentQuestion.Vector; metric: "cosine"; threshold: 0.7}

var $timer:=Current time()

Form.indexedResult:=ds.Data.query("IndexedVector>=:1 order by IndexedVector desc"; $param)

Form.indexedTimer:=Current time()-$timer