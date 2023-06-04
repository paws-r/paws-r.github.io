<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_studios</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all Amazon EMR Studios associated with the Amazon Web Services account

### Description

Returns a list of all Amazon EMR Studios associated with the Amazon Web
Services account. The list includes details such as ID, Studio Access
URL, and creation time for each Studio.

### Usage

    emr_list_studios(Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_list_studios_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Studios = list(
        list(
          StudioId = "string",
          Name = "string",
          VpcId = "string",
          Description = "string",
          Url = "string",
          AuthMode = "SSO"|"IAM",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_studios(
      Marker = "string"
    )
