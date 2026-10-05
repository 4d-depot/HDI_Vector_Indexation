//%attributes = {}
Form.trace:=False

var $questions:=ds.Prompts.all().toCollection().map(Formula($1.value.Prompt))

Form.questions:={values: $questions; currentValue: $questions[0]}

Form.currentQuestion:=ds.Prompts.query("Prompt=:1"; $questions[0]).first()

