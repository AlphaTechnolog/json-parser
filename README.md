# Json Parser

This is a experimental tool that I create for educational purposes, it's
based in the `jq` works

With this tool you can parse json-like strings, and get some properties
(like `jq` package)

## Installation

To install `json-parser` first clone the repository:

```sh
mkdir -p ~/repo && cd ~/repo
git clone https://github.com/AlphaTechnolog/json-parser.git json-parser
cd json-parser
```

Then run the `install.sh` script:

```sh
sudo ./install.sh
```

## Usage

You can parse json-like strings, passing it as a argument to `json-parser`
like this:

```sh
json-parser '{"hello": "world"}'
```

It will print some output like this:

```sh
{ hello: 'world' }
```

And you can pass expressions as argument like this:

```sh
$ json-parser '{"hello": "world"}' '.hello'
```

It will print:

```sh
world
```

Because the expressions is a javascript accessor-like

## Complex Usage

This is a more complex usage of the accessors

```sh
$ json-parser '{"hello": [0, [{"world": "hello"}]]}' '.hello[1][0].world'
hello
```

You can execute some javascript sentences in the expression, like this

```sh
$ json-parser '{"message": "You are "}' '.message + "beautiful"'
You are beautiful
```

## Passing json-like strings from stdin

You can pass json-like strings from stdin, with commands like this:

```sh
$ echo '{"hello": "world"}' | jq > app.json
$ cat app.json | json-parser --stdin '.hello'
world
```

Or with a curl command:

```sh
$ curl http://localhost:8000/api/v1/todo/fetchall | json-parser --stdin '.todo[0]'
{
  name: "Go to the park",
  description: "I want to go to the park",
  completed: true
}
```

## Enjoy

Thank you for read me, and thank you for use json-parser, if you like
my work, please give me a star :)
