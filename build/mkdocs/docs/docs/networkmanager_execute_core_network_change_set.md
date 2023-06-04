<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_execute_core_network_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Executes a change set on your core network

### Description

Executes a change set on your core network. Deploys changes globally
based on the policy submitted..

### Usage

    networkmanager_execute_core_network_change_set(CoreNetworkId,
      PolicyVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_execute_core_network_change_set_:_CoreNetworkId">CoreNetworkId</code></td>
<td><p>[required] The ID of a core network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_execute_core_network_change_set_:_PolicyVersionId">PolicyVersionId</code></td>
<td><p>[required] The ID of the policy version.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$execute_core_network_change_set(
      CoreNetworkId = "string",
      PolicyVersionId = 123
    )
