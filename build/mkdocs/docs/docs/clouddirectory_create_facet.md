<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Facet in a schema

### Description

Creates a new Facet in a schema. Facet creation is allowed only in
development or applied schemas.

### Usage

    clouddirectory_create_facet(SchemaArn, Name, Attributes, ObjectType,
      FacetStyle)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_create_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The schema ARN in which the new Facet will be created.
For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_create_facet_:_Name">Name</code></td>
<td><p>[required] The name of the Facet, which is unique for a given
schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_facet_:_Attributes">Attributes</code></td>
<td><p>The attributes that are associated with the Facet.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_facet_:_ObjectType">ObjectType</code></td>
<td><p>Specifies whether a given object created from this facet is of
type node, leaf node, policy or index.</p>
<ul>
<li><p>Node: Can have multiple children but one parent.</p></li>
<li><p>Leaf node: Cannot have children but can have multiple
parents.</p></li>
<li><p>Policy: Allows you to store a policy document and policy type.
For more information, see <a
href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p></li>
<li><p>Index: Can be created with the Index API.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_facet_:_FacetStyle">FacetStyle</code></td>
<td><p>There are two different styles that you can define on any given
facet, <code>Static</code> and <code>Dynamic</code>. For static facets,
all attributes must be defined in the schema. For dynamic facets,
attributes can be defined during data plane operations.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_facet(
      SchemaArn = "string",
      Name = "string",
      Attributes = list(
        list(
          Name = "string",
          AttributeDefinition = list(
            Type = "STRING"|"BINARY"|"BOOLEAN"|"NUMBER"|"DATETIME"|"VARIANT",
            DefaultValue = list(
              StringValue = "string",
              BinaryValue = raw,
              BooleanValue = TRUE|FALSE,
              NumberValue = "string",
              DatetimeValue = as.POSIXct(
                "2015-01-01"
              )
            ),
            IsImmutable = TRUE|FALSE,
            Rules = list(
              list(
                Type = "BINARY_LENGTH"|"NUMBER_COMPARISON"|"STRING_FROM_SET"|"STRING_LENGTH",
                Parameters = list(
                  "string"
                )
              )
            )
          ),
          AttributeReference = list(
            TargetFacetName = "string",
            TargetAttributeName = "string"
          ),
          RequiredBehavior = "REQUIRED_ALWAYS"|"NOT_REQUIRED"
        )
      ),
      ObjectType = "NODE"|"LEAF_NODE"|"POLICY"|"INDEX",
      FacetStyle = "STATIC"|"DYNAMIC"
    )
