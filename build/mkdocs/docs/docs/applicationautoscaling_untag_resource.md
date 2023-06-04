<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes tags from an Application Auto Scaling scalable target

### Description

Deletes tags from an Application Auto Scaling scalable target. To delete
a tag, specify the tag key and the Application Auto Scaling scalable
target.

### Usage

    applicationautoscaling_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationautoscaling_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Identifies the Application Auto Scaling scalable
target from which to remove tags.</p>
<p>For example: <code
style="white-space: pre;">⁠arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123⁠</code></p>
<p>To get the ARN for a scalable target, use
<code>describe_scalable_targets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] One or more tag keys. Specify only the tag keys, not
the tag values.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example removes the tag pair with the key name "environment" from
    # the scalable target specified by its ARN.
    svc$untag_resource(
      ResourceARN = "arn:aws:application-autoscaling:us-west-2:123456789012:sca...",
      TagKeys = list(
        "environment"
      )
    )

    ## End(Not run)
