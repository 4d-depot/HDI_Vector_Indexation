If (FORM Event.code=On Data Change)
	Form.currentQuestion:=ds.Prompts.query("Prompt=:1"; Form.questions.currentValue).first()
End if 