//%attributes = {}
//var $model:="text-embedding-ada-002"
var $model:="text-embedding-nomic-embed-text-v1.5"

$client:=cs.AIKit.OpenAI.new()




For each ($item; ds.Data.query("IndexedVector is Null"))  //query("IndexedVector is Null")
	
	var $text:=$item.Text
	
	$result:=$client.embeddings.create($text; "ModelEmbedding")
	
	$item.IndexedVector:=$result.embedding.embedding
	$item.NonIndexedVector:=$result.embedding.embedding
	$item.EmbeddingModel:=$model
	
	//$item.Vector:=$result.embedding.embedding
	//$item.EmbeddingModel:=$model
	
	//$item.save()
End for each 
