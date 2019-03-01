# Program Package Development
This program package guides you through how to develop
programs for WPS Hub Deployment Services within a
program package.

Program packages are stored in git, and are edited using
normal editors and a standard git client. The program package
git repository can be hosted by the Hub itself, or it
can he hosted on a site such as Github.

When using program packages, the package becomes the unit
of deployment. So all programs within a package are deployed
together to an environment.

## Package structure
A package can be structured in any way you choose. Programs
can be placed in directories for organisation if necessary.
However, it is important to note that the complete git repository
is deployed together. The package becomes the unit of deployment.
So make sure that the git repository only contains resources
that are necessary for deployment. It is not possible to deploy
only part of a repository.

In simple terms, if there is a file called "hello.sas" in the
package, it can be invoked using a URL of `deployed-package-name/hello.sas`.


## Package Descriptor File
There is an optional file, `package.yaml` that can exist
in the root directory of a package. This describes, amongst
other things, the programs within the package that should be
published to the directory. Note that publication of programs
in the directory is not required for invocation. Programs can be
invoked directly if the URL is known ('ex-directory' programs).
Publication in the directory is necessary in order for the program
to be invoked using an invocation interface such as the Excel plugin.

### Syntax
The package.yaml file is a YAML file with the following fields:

| Field | Type | Description |
| ----- | ---- | ----------- |
| publishInDirectory | Array of string | A list of the relative paths to the programs to publish in the directory |

## Program Descriptor
In order to be able to invoke a program it is necessary to have a description of its interface and invocation options. This information is stored in the program descriptor that is associated with a program.

The program descriptor is placed in a separate YAML file alongside the program source file. The program descriptor should have the same name as the program source file, with an additional ".yaml" extension. So for a program source file called "hello.sas", the program descriptor should be in a file called "hello.sas.yaml".

Note that a program descriptor isn't strictly necessary. For a program that has no parameters, and uses all of the default execution options, no descriptor is required. In all but the simplest of cases though the descriptor is required.

### Program Descriptor Syntax
The descriptor is a YAML formatted file with the following base properties:

| Field | Type | Description |
| ----- | ---- | ----------- |
| label | string | The label under which this program is published in the directory. This is only relevant if the program is included in the list of programs to be published within the package descriptor file. If not specified, the program's file name, without extension, is used.
| description | string | A description of the program to place in the directory. This is only relevant if the program is included in the list of programs to be published within the package descriptor file.
| categories | array of string | A list of categories under which the program will be listed in the directory, if it is to be published.
| parameters | array of object | A list of the parameters for the program.

#### SAS Language Programs
In addition, for SAS language programs, the following properties can be specified:

| Field | Type | Description |
| ----- | ---- | ----------- |
| resultType | string | One of the values `stream` or `dataset`.
| resultContentType | string | The media type of the output in the case of `resultType` being set to `stream`
| resultDatasetName | string | The name of the data set to be returned in the case of `resultType` being set to `dataset`
| resultFormat | string | One of the values `json`, `csv` or `xml`. Determines how data sets are converted to text when generating the response.
| parameterStyle | string | One of the values `macroVars` or `dataset`. Determines how parameters are passed into the program.

These settings are described by way of the examples

#### R Language Programs
In addition, for R language programs, the following properties can be specified:

| Field | Type | Description |
| ----- | ---- | ----------- |
| resultType | string | One of the values `stream`, `object` or `console`.
| resultContentType | string | The media type of the output in the case of `resultType` being set to `stream`
| resultObjectName | string | The name of the R object to be returned in the case of `resultType` being set to `object`
| resultFormat | string | One of the values `json`, `csv`, `print` or `tab`. Determines how the result object is converted to text when generating the response.
| parameterStyle | string | One of the values `macroVars` or `dataset`. Determines how parameters are passed into the program.
| initText | string | A set of R program statements that are invoked once within the R runtime that will be used to invoke this program.

These settings are described by way of the examples

## Examples
There are two sets of examples, one in the SAS language and one in the R language.

* [SAS Language examples](sas/README.md)
* [R Language examples](r/README.md)



