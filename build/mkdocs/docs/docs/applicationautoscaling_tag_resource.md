<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationautoscaling_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or edits tags on an Application Auto Scaling scalable target

### Description

Adds or edits tags on an Application Auto Scaling scalable target.

Each tag consists of a tag key and a tag value, which are both
case-sensitive strings. To add a tag, specify a new tag key and a tag
value. To edit a tag, specify an existing tag key and a new tag value.

You can use this operation to tag an Application Auto Scaling scalable
target, but you cannot tag a scaling policy or scheduled action.

You can also add tags to an Application Auto Scaling scalable target
while creating it (`register_scalable_target`).

For general information about tags, including the format and syntax, see
[Tagging Amazon Web Services
resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
in the *Amazon Web Services General Reference*.

Use tags to control access to a scalable target. For more information,
see [Tagging support for Application Auto
Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html)
in the *Application Auto Scaling User Guide*.

### Usage

    applicationautoscaling_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationautoscaling_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] Identifies the Application Auto Scaling scalable
target that you want to apply tags to.</p>
<p>For example: <code
style="white-space: pre;">⁠arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123⁠</code></p>
<p>To get the ARN for a scalable target, use
<code>describe_scalable_targets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationautoscaling_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags assigned to the resource. A tag is a label
that you assign to an Amazon Web Services resource.</p>
<p>Each tag consists of a tag key and a tag value.</p>
<p>You cannot have more than one tag on an Application Auto Scaling
scalable target with the same tag key. If you specify an existing tag
key with a different tag value, Application Auto Scaling replaces the
current tag value with the specified one.</p>
<p>For information about the rules that apply to tag keys and tag
values, see <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-defined
tag restrictions</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example adds a tag with the key name "environment" and the value
    # "production" to the scalable target specified by its ARN.
    svc$tag_resource(
      ResourceARN = "arn:aws:application-autoscaling:us-west-2:123456789012:sca...",
      Tags = list(
        environment = "production"
      )
    )

    ## End(Not run)
