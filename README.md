# Stop
A programming language based on Go / Java / Python etc.

### Introduction
// TODO

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL\
NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED",  "MAY", and\
"OPTIONAL" in this document are to be interpreted as described in\
[RFC 2119](http://www.ietf.org/rfc/rfc2119.txt).

### Data Types
Stop supports the following primitive data types, support for arrays will be added in the future.
* `int` implemented as Java `int`
* `float` implemented as Java `double`
* `string` implemented as Java `String`
* `bool` implemented as Java `boolean`

### Variables
Variables **MUST** be initialized with either a literal value, or a variable which has already been initialized.\
There are no `null` values in Stop.

##### Access
Variables declarations outside a function must follow an access modifier.\
`private` variables **MAY** be `const`.\
`public` variables **MUST** be `const`.


##### Naming convention
`const` variables **MUST** use all `UPPER_CASE` characters with words separated by underscores.\
All other variables **MUST** start with a lower-case letter, and can only include letters, no underscores.

##### Initialization
Variable types are inferred from the value with which they are initialized.
```
public const PUBLIC_CONST_STRING := "string"
private const PRIVATE_CONST_INTEGER := 1
private privateBool := true

func myFunc()
  const CONST_FLOAT := 1.23
  myBool := false
end
```

##### Assignment
Once a variable has been initialized, it can be assigned other values, the new value **MUST** be of the same type with which the variable was initialized. `const` variables cannot be assigned.
```
myBool := true
myBool = false

otherBool := 1 < 5
myBool = otherBool
```

### Comments
Stop allows for single line comments.\
`# This is a comment`\
Everything from the `#` to the end of the line is counted as a comment.\
Multiple single-line comments can be used as a comment block.
```
# Multi
# line
# comment
```
Comments **MAY** be placed at the end of a line containing code, however this practice is **NOT RECOMMENDED**
```
for (i := 0 : i < 10 : i = i + 1) # Loop 10 times
# Do stuff
end
```

### License
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
