<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current namespace

### Description

Describes the current namespace.

### Usage

    quicksight_describe_namespace(AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_namespace_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the Amazon QuickSight namespace that you want to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_namespace_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that you want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Namespace = list(
        Name = "string",
        Arn = "string",
        CapacityRegion = "string",
        CreationStatus = "CREATED"|"CREATING"|"DELETING"|"RETRYABLE_FAILURE"|"NON_RETRYABLE_FAILURE",
        IdentityStore = "QUICKSIGHT",
        NamespaceError = list(
          Type = "PERMISSION_DENIED"|"INTERNAL_SERVICE_ERROR",
          Message = "string"
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_namespace(
      AwsAccountId = "string",
      Namespace = "string"
    )
