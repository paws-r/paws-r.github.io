<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_list_elements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all the elements in the specified list

### Description

Gets all the elements in the specified list.

### Usage

    frauddetector_get_list_elements(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_list_elements_:_name">name</code></td>
<td><p>[required] The name of the list.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_list_elements_:_nextToken">nextToken</code></td>
<td><p>The next token for the subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_list_elements_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      elements = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_list_elements(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
