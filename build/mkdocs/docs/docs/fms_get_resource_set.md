<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific resource set

### Description

Gets information about a specific resource set.

### Usage

    fms_get_resource_set(Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_resource_set_:_Identifier">Identifier</code></td>
<td><p>[required] A unique identifier for the resource set, used in a
request to refer to the resource set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceSet = list(
        Id = "string",
        Name = "string",
        Description = "string",
        UpdateToken = "string",
        ResourceTypeList = list(
          "string"
        ),
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        ResourceSetStatus = "ACTIVE"|"OUT_OF_ADMIN_SCOPE"
      ),
      ResourceSetArn = "string"
    )

### Request syntax

    svc$get_resource_set(
      Identifier = "string"
    )
