<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_describe_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current data access role for the given resource registered in Lake Formation

### Description

Retrieves the current data access role for the given resource registered
in Lake Formation.

### Usage

    lakeformation_describe_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_describe_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceInfo = list(
        ResourceArn = "string",
        RoleArn = "string",
        LastModified = as.POSIXct(
          "2015-01-01"
        ),
        WithFederation = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_resource(
      ResourceArn = "string"
    )
