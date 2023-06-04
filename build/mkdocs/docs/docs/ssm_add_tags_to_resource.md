<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified resource

### Description

Adds or overwrites one or more tags for the specified resource. *Tags*
are metadata that you can assign to your automations, documents, managed
nodes, maintenance windows, Parameter Store parameters, and patch
baselines. Tags enable you to categorize your resources in different
ways, for example, by purpose, owner, or environment. Each tag consists
of a key and an optional value, both of which you define. For example,
you could define a set of tags for your account's managed nodes that
helps you track each node's owner and stack level. For example:

-   `⁠Key=Owner,Value=DbAdmin⁠`

-   `⁠Key=Owner,Value=SysAdmin⁠`

-   `⁠Key=Owner,Value=Dev⁠`

-   `⁠Key=Stack,Value=Production⁠`

-   `⁠Key=Stack,Value=Pre-Production⁠`

-   `⁠Key=Stack,Value=Test⁠`

Most resources can have a maximum of 50 tags. Automations can have a
maximum of 5 tags.

We recommend that you devise a set of tag keys that meets your needs for
each resource type. Using a consistent set of tag keys makes it easier
for you to manage your resources. You can search and filter the
resources based on the tags you add. Tags don't have any semantic
meaning to and are interpreted strictly as a string of characters.

For more information about using tags with Amazon Elastic Compute Cloud
(Amazon EC2) instances, see [Tagging your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the *Amazon EC2 User Guide*.

### Usage

    ssm_add_tags_to_resource(ResourceType, ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_add_tags_to_resource_:_ResourceType">ResourceType</code></td>
<td><p>[required] Specifies the type of resource you are tagging.</p>
<p>The <code>ManagedInstance</code> type for this API operation is for
on-premises managed nodes. You must specify the name of the managed node
in the following format: <code>mi-ID_number </code>. For example, <code
style="white-space: pre;">⁠mi-1a2b3c4d5e6f⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_add_tags_to_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource ID you want to tag.</p>
<p>Use the ID of the resource. Here are some examples:</p>
<p><code>MaintenanceWindow</code>: <code
style="white-space: pre;">⁠mw-012345abcde⁠</code></p>
<p><code>PatchBaseline</code>: <code
style="white-space: pre;">⁠pb-012345abcde⁠</code></p>
<p><code>Automation</code>: <code
style="white-space: pre;">⁠example-c160-4567-8519-012345abcde⁠</code></p>
<p><code>OpsMetadata</code> object: <code>ResourceID</code> for tagging
is created from the Amazon Resource Name (ARN) for the object.
Specifically, <code>ResourceID</code> is created from the strings that
come after the word <code>opsmetadata</code> in the ARN. For example, an
OpsMetadata object with an ARN of
<code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
has a <code>ResourceID</code> of either
<code>aws/ssm/MyGroup/appmanager</code> or <code
style="white-space: pre;">⁠/aws/ssm/MyGroup/appmanager⁠</code>.</p>
<p>For the <code>Document</code> and <code>Parameter</code> values, use
the name of the resource.</p>
<p><code>ManagedInstance</code>: <code
style="white-space: pre;">⁠mi-012345abcde⁠</code></p>
<p>The <code>ManagedInstance</code> type for this API operation is only
for on-premises managed nodes. You must specify the name of the managed
node in the following format: <code>mi-ID_number </code>. For example,
<code style="white-space: pre;">⁠mi-1a2b3c4d5e6f⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] One or more tags. The value parameter is required.</p>
<p>Don't enter personally identifiable information in this
field.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_resource(
      ResourceType = "Document"|"ManagedInstance"|"MaintenanceWindow"|"Parameter"|"PatchBaseline"|"OpsItem"|"OpsMetadata"|"Automation"|"Association",
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
