<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_custom_entity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom pattern that is used to detect sensitive data across the columns and rows of your structured data

### Description

Creates a custom pattern that is used to detect sensitive data across
the columns and rows of your structured data.

Each custom pattern you create specifies a regular expression and an
optional list of context words. If no context words are passed only a
regular expression is checked.

### Usage

    glue_create_custom_entity_type(Name, RegexString, ContextWords, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_custom_entity_type_:_Name">Name</code></td>
<td><p>[required] A name for the custom pattern that allows it to be
retrieved or deleted later. This name must be unique per Amazon Web
Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_custom_entity_type_:_RegexString">RegexString</code></td>
<td><p>[required] A regular expression string that is used for detecting
sensitive data in a custom pattern.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_custom_entity_type_:_ContextWords">ContextWords</code></td>
<td><p>A list of context words. If none of these context words are found
within the vicinity of the regular expression the data will not be
detected as sensitive data.</p>
<p>If no context words are passed only a regular expression is
checked.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_custom_entity_type_:_Tags">Tags</code></td>
<td><p>A list of tags applied to the custom entity type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_custom_entity_type(
      Name = "string",
      RegexString = "string",
      ContextWords = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
