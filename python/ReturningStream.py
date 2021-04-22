WeboutText = io.TextIOWrapper(Webout)
result = {
    'greeting': 'hello',
    'score': 42
}
json.dump(result, WeboutText)
WeboutText.flush()