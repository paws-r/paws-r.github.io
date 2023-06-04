<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_tag_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies one or more tags to the specified resources

### Description

Applies one or more tags to the specified resources. Note the following:

-   Not all resources can have tags. For a list of services with
    resources that support tagging using this operation, see [Services
    that support the Resource Groups Tagging
    API](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html).
    If the resource doesn't yet support this operation, the resource's
    service might support tagging using its own API operations. For more
    information, refer to the documentation for that service.

-   Each resource can have up to 50 tags. For other limits, see [Tag
    Naming and Usage
    Conventions](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html#tag-conventions)
    in the *Amazon Web Services General Reference.*

-   You can only tag resources that are located in the specified Amazon
    Web Services Region for the Amazon Web Services account.

-   To add tags to a resource, you need the necessary permissions for
    the service that the resource belongs to as well as permissions for
    adding tags. For more information, see the documentation for each
    service.

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.

**Minimum permissions**

In addition to the `tag:TagResources` permission required by this
operation, you must also have the tagging permission defined by the
service that created the resource. For example, to tag an Amazon EC2
instance using the `tag_resources` operation, you must have both of the
following permissions:

-   `tag:TagResource`

-   `ec2:CreateTags`

### Usage

    resourcegroupstaggingapi_tag_resources(ResourceARNList, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_tag_resources_:_ResourceARNList">ResourceARNList</code></td>
<td><p>[required] Specifies the list of ARNs of the resources that you
want to apply tags to.</p>
<p>An ARN (Amazon Resource Name) uniquely identifies a resource. For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in
the <em>Amazon Web Services General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroupstaggingapi_tag_resources_:_Tags">Tags</code></td>
<td><p>[required] Specifies a list of tags that you want to add to the
specified resources. A tag consists of a key and a value that you
define.</p></td>
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

    svc$tag_resources(
      ResourceARNList = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
