<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a list

### Description

Creates a list.

List is a set of input data for a variable in your event dataset. You
use the input data in a rule that's associated with your detector. For
more information, see
[Lists](https://docs.aws.amazon.com/frauddetector/latest/ug/lists.html).

### Usage

    frauddetector_create_list(name, elements, variableType, description,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_create_list_:_name">name</code></td>
<td><p>[required] The name of the list.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_create_list_:_elements">elements</code></td>
<td><p>The names of the elements, if providing. You can also create an
empty list and add elements later using the <code>update_list</code>
API.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_list_:_variableType">variableType</code></td>
<td><p>The variable type of the list. You can only assign the variable
type with String data type. For more information, see <a
href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable
types</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_list_:_description">description</code></td>
<td><p>The description of the list.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_create_list_:_tags">tags</code></td>
<td><p>A collection of the key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_list(
      name = "string",
      elements = list(
        "string"
      ),
      variableType = "string",
      description = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
