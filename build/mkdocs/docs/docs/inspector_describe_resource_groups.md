<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_resource_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the resource groups that are specified by the ARNs of the resource groups

### Description

Describes the resource groups that are specified by the ARNs of the
resource groups.

### Usage

    inspector_describe_resource_groups(resourceGroupArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_resource_groups_:_resourceGroupArns">resourceGroupArns</code></td>
<td><p>[required] The ARN that specifies the resource group that you
want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceGroups = list(
        list(
          arn = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_resource_groups(
      resourceGroupArns = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Describes the resource groups that are specified by the ARNs of the
    # resource groups.
    svc$describe_resource_groups(
      resourceGroupArns = list(
        "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-PyGXopAI"
      )
    )

    ## End(Not run)
