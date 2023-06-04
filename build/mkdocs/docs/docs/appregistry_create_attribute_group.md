<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_create_attribute_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new attribute group as a container for user-defined attributes

### Description

Creates a new attribute group as a container for user-defined
attributes. This feature enables users to have full control over their
cloud application's metadata in a rich machine-readable format to
facilitate integration with automated workflows and third-party tools.

### Usage

    appregistry_create_attribute_group(name, description, attributes, tags,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_create_attribute_group_:_name">name</code></td>
<td><p>[required] The name of the attribute group.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_create_attribute_group_:_description">description</code></td>
<td><p>The description of the attribute group that the user
provides.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_create_attribute_group_:_attributes">attributes</code></td>
<td><p>[required] A JSON string in the form of nested key-value pairs
that represent the attributes in the group and describes an application
and its components.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_create_attribute_group_:_tags">tags</code></td>
<td><p>Key-value pairs you can use to associate with the attribute
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_create_attribute_group_:_clientToken">clientToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If you retry a request that completed successfully using
the same client token and the same parameters, the retry succeeds
without performing any further actions. If you retry a successful
request using the same client token, but one or more of the parameters
are different, the retry fails.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributeGroup = list(
        id = "string",
        arn = "string",
        name = "string",
        description = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_attribute_group(
      name = "string",
      description = "string",
      attributes = "string",
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
