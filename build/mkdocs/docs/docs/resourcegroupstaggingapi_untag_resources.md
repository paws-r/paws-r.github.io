<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_untag_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified resources

### Description

Removes the specified tags from the specified resources. When you
specify a tag key, the action removes both that key and its associated
value. The operation succeeds even if you attempt to remove tags from a
resource that were already removed. Note the following:

-   To remove tags from a resource, you need the necessary permissions
    for the service that the resource belongs to as well as permissions
    for removing tags. For more information, see the documentation for
    the service whose resource you want to untag.

-   You can only tag resources that are located in the specified Amazon
    Web Services Region for the calling Amazon Web Services account.

**Minimum permissions**

In addition to the `tag:UntagResources` permission required by this
operation, you must also have the remove tags permission defined by the
service that created the resource. For example, to remove the tags from
an Amazon EC2 instance using the `untag_resources` operation, you must
have both of the following permissions:

-   `tag:UntagResource`

-   `ec2:DeleteTags`

### Usage

    resourcegroupstaggingapi_untag_resources(ResourceARNList, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_untag_resources_:_ResourceARNList">ResourceARNList</code></td>
<td><p>[required] Specifies a list of ARNs of the resources that you
want to remove tags from.</p>
<p>An ARN (Amazon Resource Name) uniquely identifies a resource. For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in
the <em>Amazon Web Services General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_untag_resources_:_TagKeys">TagKeys</code></td>
<td><p>[required] Specifies a list of tag keys that you want to remove
from the specified resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedResourcesMap = list(
        list(
          StatusCode = 123,
          ErrorCode = "InternalServiceException"|"InvalidParameterException",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$untag_resources(
      ResourceARNList = list(
        "string"
      ),
      TagKeys = list(
        "string"
      )
    )
