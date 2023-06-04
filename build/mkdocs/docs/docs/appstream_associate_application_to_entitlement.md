<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_associate_application_to_entitlement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an application to entitle

### Description

Associates an application to entitle.

### Usage

    appstream_associate_application_to_entitlement(StackName,
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
id="appstream_associate_application_to_entitlement_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_associate_application_to_entitlement_:_EntitlementName">EntitlementName</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_associate_application_to_entitlement_:_ApplicationIdentifier">ApplicationIdentifier</code></td>
<td><p>[required] The identifier of the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_application_to_entitlement(
      StackName = "string",
      EntitlementName = "string",
      ApplicationIdentifier = "string"
    )
