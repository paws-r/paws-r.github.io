<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return the tags applied to an AWS Elastic Beanstalk resource

### Description

Return the tags applied to an AWS Elastic Beanstalk resource. The
response contains a list of tag key-value pairs.

Elastic Beanstalk supports tagging of all of its resources. For details
about resource tagging, see [Tagging Application
Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).

### Usage

    elasticbeanstalk_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resouce for
which a tag list is requested.</p>
<p>Must be the ARN of an Elastic Beanstalk resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      ResourceTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
