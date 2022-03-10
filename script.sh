
javac MarkdownParse.java
javac MDParseCS.java

for file in test-files/*.md;
do
  if diff <(java MarkdownParse $file) <(java MDParseCS $file);
  then
    :
  else
    echo $file
  fi
done
