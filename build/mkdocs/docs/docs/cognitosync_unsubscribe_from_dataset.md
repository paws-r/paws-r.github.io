<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_unsubscribe_from_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unsubscribes from receiving notifications when a dataset is modified by another device

### Description

Unsubscribes from receiving notifications when a dataset is modified by
another device.

This API can only be called with temporary credentials provided by
Cognito Identity. You cannot call this API with developer credentials.

### Usage

    cognitosync_unsubscribe_from_dataset(IdentityPoolId, IdentityId,
      DatasetName, DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_unsubscribe_from_dataset_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. The ID of the pool to which this identity belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_unsubscribe_from_dataset_:_IdentityId">IdentityId</code></td>
<td><p>[required] Unique ID for this identity.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_unsubscribe_from_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset from which to
unsubcribe.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_unsubscribe_from_dataset_:_DeviceId">DeviceId</code></td>
<td><p>[required] The unique ID generated for this device by
Cognito.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unsubscribe_from_dataset(
      IdentityPoolId = "string",
      IdentityId = "string",
      DatasetName = "string",
      DeviceId = "string"
    )
