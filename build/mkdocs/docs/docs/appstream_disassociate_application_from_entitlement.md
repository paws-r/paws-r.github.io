<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_disassociate_application_from_entitlement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified application from the specified entitlement

### Description

Deletes the specified application from the specified entitlement.

### Usage

    appstream_disassociate_application_from_entitlement(StackName,
      EntitlementName, ApplicationIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_disassociate_application_from_entitlement_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_disassociate_application_from_entitlement_:_EntitlementName">EntitlementName</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_disassociate_application_from_entitlement_:_ApplicationIdentifier">ApplicationIdentifier</code></td>
<td><p>[required] The identifier of the application to remove from the
entitlement.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_application_from_entitlement(
      StackName = "string",
      EntitlementName = "string",
      ApplicationIdentifier = "string"
    )
