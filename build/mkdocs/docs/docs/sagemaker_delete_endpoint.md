<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an endpoint

### Description

Deletes an endpoint. SageMaker frees up all of the resources that were
deployed when the endpoint was created.

SageMaker retires any custom KMS key grants associated with the
endpoint, meaning you don't need to use the
[RevokeGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html)
API call.

When you delete your endpoint, SageMaker asynchronously deletes
associated endpoint resources such as KMS key grants. You might still
see these resources in your account for a few minutes after deleting
your endpoint. Do not delete or revoke the permissions for your
`ExecutionRoleArn`, otherwise SageMaker cannot delete these resources.

### Usage

    sagemaker_delete_endpoint(EndpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint(
      EndpointName = "string"
    )
