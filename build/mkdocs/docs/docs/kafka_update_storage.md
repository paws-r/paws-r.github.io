<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_storage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates cluster broker volume size (or) sets cluster storage mode to TIERED

### Description

Updates cluster broker volume size (or) sets cluster storage mode to
TIERED.

### Usage

    kafka_update_storage(ClusterArn, CurrentVersion, ProvisionedThroughput,
      StorageMode, VolumeSizeGB)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_update_storage_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_storage_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of cluster to update from. A successful
operation will then generate a new version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_storage_:_ProvisionedThroughput">ProvisionedThroughput</code></td>
<td><p>EBS volume provisioned throughput information.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_storage_:_StorageMode">StorageMode</code></td>
<td><p>Controls storage mode for supported storage tiers.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_storage_:_VolumeSizeGB">VolumeSizeGB</code></td>
<td><p>size of the EBS volume to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterOperationArn = "string"
    )

### Request syntax

    svc$update_storage(
      ClusterArn = "string",
      CurrentVersion = "string",
      ProvisionedThroughput = list(
        Enabled = TRUE|FALSE,
        VolumeThroughput = 123
      ),
      StorageMode = "LOCAL"|"TIERED",
      VolumeSizeGB = 123
    )
