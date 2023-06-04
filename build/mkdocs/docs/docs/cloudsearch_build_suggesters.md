<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_build_suggesters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indexes the search suggestions

### Description

Indexes the search suggestions. For more information, see [Configuring
Suggesters](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters)
in the *Amazon CloudSearch Developer Guide*.

### Usage

    cloudsearch_build_suggesters(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_build_suggesters_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FieldNames = list(
        "string"
      )
    )

### Request syntax

    svc$build_suggesters(
      DomainName = "string"
    )
