# sends email using sendmail
# usage: echo "my email message" | email "foo@bar.com" "new event happened" "serverX" "noreply@serverx.com"

email(){
  content="$(cat - )"; email="$1"; subject="$2"; fromname="$3"; from="$4"
  {
    echo "Subject: $subject"
    echo "From: $fromname <$from>";
    echo "To: $email";
    echo "$content"
  } | $(which sendmail) -F "$from" "$email"
}
