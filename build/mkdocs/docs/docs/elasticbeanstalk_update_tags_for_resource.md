<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the list of tags applied to an AWS Elastic Beanstalk resource

### Description

Update the list of tags applied to an AWS Elastic Beanstalk resource.
Two lists can be passed: `TagsToAdd` for tags to add or update, and
`TagsToRemove`.

Elastic Beanstalk supports tagging of all of its resources. For details
about resource tagging, see [Tagging Application
Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).

If you create a custom IAM user policy to control permission to this
operation, specify one of the following two virtual actions (or both)
instead of the API operation name:

#### elasticbeanstalk:AddTags

Controls permission to call `update_tags_for_resource` and pass a list
of tags to add in the `TagsToAdd` parameter.

#### elasticbeanstalk:RemoveTags

Controls permission to call `update_tags_for_resource` and pass a list
of tag keys to remove in the `TagsToRemove` parameter.

For details about creating a custom user policy, see [Creating a Custom
User
Policy](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies).

### Usage

    elasticbeanstalk_update_tags_for_resource(ResourceArn, TagsToAdd,
      TagsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resouce to be
updated.</p>
<p>Must be the ARN of an Elastic Beanstalk resource.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_tags_for_resource_:_TagsToAdd">TagsToAdd</code></td>
<td><p>A list of tags to add or update. If a key of an existing tag is
added, the tag's value is updated.</p>
<p>Specify at least one of these parameters: <code>TagsToAdd</code>,
<code>TagsToRemove</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_tags_for_resource_:_TagsToRemove">TagsToRemove</code></td>
<td><p>A list of tag keys to remove. If a tag key doesn't exist, it is
silently ignored.</p>
<p>Specify at least one of these parameters: <code>TagsToAdd</code>,
<code>TagsToRemove</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_tags_for_resource(
      ResourceArn = "string",
      TagsToAdd = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TagsToRemove = list(
        "string"
      )
    )
