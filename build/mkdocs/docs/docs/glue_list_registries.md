<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_registries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of registries that you have created, with minimal registry information

### Description

Returns a list of registries that you have created, with minimal
registry information. Registries in the `Deleting` status will not be
included in the results. Empty results will be returned if there are no
registries available.

### Usage

    glue_list_registries(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_registries_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_registries_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Registries = list(
        list(
          RegistryName = "string",
          RegistryArn = "string",
          Description = "string",
          Status = "AVAILABLE"|"DELETING",
          CreatedTime = "string",
          UpdatedTime = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_registries(
      MaxResults = 123,
      NextToken = "string"
    )
