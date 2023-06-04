<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites only the specified tags for the specified Amazon EC2 resource or resources

### Description

Adds or overwrites only the specified tags for the specified Amazon EC2
resource or resources. When you specify an existing tag key, the value
is overwritten with the new value. Each resource can have a maximum of
50 tags. Each tag consists of a key and optional value. Tag keys must be
unique per resource.

For more information about tags, see [Tag your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon Elastic Compute Cloud User Guide*. For more information
about creating IAM policies that control users' access to resources
based on tags, see [Supported resource-level permissions for Amazon EC2
API
actions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-policy-structure.html#ec2-supported-iam-actions-resources)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_tags(DryRun, Resources, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_tags_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_tags_:_Resources">Resources</code></td>
<td><p>[required] The IDs of the resources, separated by spaces.</p>
<p>Constraints: Up to 1000 resource IDs. We recommend breaking up this
request into smaller batches.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_tags_:_Tags">Tags</code></td>
<td><p>[required] The tags. The <code>value</code> parameter is
required, but if you don't want the tag to have a value, specify the
parameter with no value, and we set the value to an empty
string.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_tags(
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
    # This example adds the tag Stack=production to the specified image, or
    # overwrites an existing tag for the AMI where the tag key is Stack.
    svc$create_tags(
      Resources = list(
        "ami-78a54011"
      ),
      Tags = list(
        list(
          Key = "Stack",
          Value = "production"
        )
      )
    )

    ## End(Not run)
