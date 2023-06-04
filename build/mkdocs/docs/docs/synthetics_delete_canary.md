<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_delete_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes the specified canary

### Description

Permanently deletes the specified canary.

If you specify `DeleteLambda` to `true`, CloudWatch Synthetics also
deletes the Lambda functions and layers that are used by the canary.

Other resources used and created by the canary are not automatically
deleted. After you delete a canary that you do not intend to use again,
you should also delete the following:

-   The CloudWatch alarms created for this canary. These alarms have a
    name of `Synthetics-SharpDrop-Alarm-MyCanaryName `.

-   Amazon S3 objects and buckets, such as the canary's artifact
    location.

-   IAM roles created for the canary. If they were created in the
    console, these roles have the name
    `role/service-role/CloudWatchSyntheticsRole-MyCanaryName`.

-   CloudWatch Logs log groups created for the canary. These logs groups
    have the name `⁠/aws/lambda/cwsyn-MyCanaryName ⁠`.

Before you delete a canary, you might want to use `get_canary` to
display the information about this canary. Make note of the information
returned by this operation so that you can delete these resources after
you delete the canary.

### Usage

    synthetics_delete_canary(Name, DeleteLambda)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_delete_canary_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want to delete. To
find the names of your canaries, use
<code>describe_canaries</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_delete_canary_:_DeleteLambda">DeleteLambda</code></td>
<td><p>Specifies whether to also delete the Lambda functions and layers
used by this canary. The default is false.</p>
<p>Type: Boolean</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_canary(
      Name = "string",
      DeleteLambda = TRUE|FALSE
    )
