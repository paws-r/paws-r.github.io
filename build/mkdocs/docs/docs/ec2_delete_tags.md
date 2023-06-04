<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified set of tags from the specified set of resources

### Description

Deletes the specified set of tags from the specified set of resources.

To list the current tags, use `describe_tags`. For more information
about tags, see [Tag your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_delete_tags(DryRun, Resources, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_tags_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_tags_:_Resources">Resources</code></td>
<td><p>[required] The IDs of the resources, separated by spaces.</p>
<p>Constraints: Up to 1000 resource IDs. We recommend breaking up this
request into smaller batches.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_delete_tags_:_Tags">Tags</code></td>
<td><p>The tags to delete. Specify a tag key and an optional tag value
to delete specific tags. If you specify a tag key without a tag value,
we delete any tag with this key regardless of its value. If you specify
a tag key with an empty string as the tag value, we delete the tag only
if its value is an empty string.</p>
<p>If you omit this parameter, we delete all user-defined tags for the
specified resources. We do not delete Amazon Web Services-generated tags
(tags that have the <code style="white-space: pre;">⁠aws:⁠</code>
prefix).</p>
<p>Constraints: Up to 1000 tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
      DryRun = TRUE|FALSE,
      Resources = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example deletes the tag Stack=test from the specified image.
    svc$delete_tags(
      Resources = list(
        "ami-78a54011"
      ),
      Tags = list(
        list(
          Key = "Stack",
          Value = "test"
        )
      )
    )

    ## End(Not run)
