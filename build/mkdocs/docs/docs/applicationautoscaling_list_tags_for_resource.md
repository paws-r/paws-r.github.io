<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all the tags on the specified Application Auto Scaling scalable target

### Description

Returns all the tags on the specified Application Auto Scaling scalable
target.

For general information about tags, including the format and syntax, see
[Tagging Amazon Web Services
resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the *Amazon Web Services General Reference*.

### Usage

    applicationautoscaling_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationautoscaling_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Specify the ARN of the scalable target.</p>
<p>For example: <code
style="white-space: pre;">⁠arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123⁠</code></p>
<p>To get the ARN for a scalable target, use
<code>describe_scalable_targets</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )

### Examples

    ## Not run: 
    # This example lists the tag key names and values that are attached to the
    # scalable target specified by its ARN.
    svc$list_tags_for_resource(
      ResourceARN = "arn:aws:application-autoscaling:us-west-2:123456789012:sca..."
    )

    ## End(Not run)
