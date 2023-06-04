<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_batch_disassociate_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates resources from a Firewall Manager resource set

### Description

Disassociates resources from a Firewall Manager resource set.

### Usage

    fms_batch_disassociate_resource(ResourceSetIdentifier, Items)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_batch_disassociate_resource_:_ResourceSetIdentifier">ResourceSetIdentifier</code></td>
<td><p>[required] A unique identifier for the resource set, used in a
request to refer to the resource set.</p></td>
</tr>
<tr class="even">
<td><code id="fms_batch_disassociate_resource_:_Items">Items</code></td>
<td><p>[required] The uniform resource identifiers (URI) of resources
that should be disassociated from the resource set. The URIs must be
Amazon Resource Names (ARNs).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceSetIdentifier = "string",
      FailedItems = list(
        list(
          URI = "string",
          Reason = "NOT_VALID_ARN"|"NOT_VALID_PARTITION"|"NOT_VALID_REGION"|"NOT_VALID_SERVICE"|"NOT_VALID_RESOURCE_TYPE"|"NOT_VALID_ACCOUNT_ID"
        )
      )
    )

### Request syntax

    svc$batch_disassociate_resource(
      ResourceSetIdentifier = "string",
      Items = list(
        "string"
      )
    )
