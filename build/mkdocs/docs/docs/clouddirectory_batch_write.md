<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_batch_write</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs all the write operations in a batch

### Description

Performs all the write operations in a batch. Either all the operations
succeed or none.

### Usage

    clouddirectory_batch_write(DirectoryArn, Operations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_batch_write_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_batch_write_:_Operations">Operations</code></td>
<td><p>[required] A list of operations that are part of the
batch.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Responses = list(
        list(
          CreateObject = list(
            ObjectIdentifier = "string"
          ),
          AttachObject = list(
            attachedObjectIdentifier = "string"
          ),
          DetachObject = list(
            detachedObjectIdentifier = "string"
          ),
          UpdateObjectAttributes = list(
            ObjectIdentifier = "string"
          ),
          DeleteObject = list(),
          AddFacetToObject = list(),
          RemoveFacetFromObject = list(),
          AttachPolicy = list(),
          DetachPolicy = list(),
          CreateIndex = list(
            ObjectIdentifier = "string"
          ),
          AttachToIndex = list(
            AttachedObjectIdentifier = "string"
          ),
          DetachFromIndex = list(
            DetachedObjectIdentifier = "string"
          ),
          AttachTypedLink = list(
            TypedLinkSpecifier = list(
              TypedLinkFacet = list(
                SchemaArn = "string",
                TypedLinkName = "string"
              ),
              SourceObjectReference = list(
                Selector = "string"
              ),
              TargetObjectReference = list(
                Selector = "string"
              ),
              IdentityAttributeValues = list(
                list(
                  AttributeName = "string",
                  Value = list(
                    StringValue = "string",
                    BinaryValue = raw,
                    BooleanValue = TRUE|FALSE,
                    NumberValue = "string",
                    DatetimeValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          ),
          DetachTypedLink = list(),
          UpdateLinkAttributes = list()
        )
      )
    )

### Request syntax

    svc$batch_write(
      DirectoryArn = "string",
      Operations = list(
        list(
          CreateObject = list(
            SchemaFacet = list(
              list(
                SchemaArn = "string",
                FacetName = "string"
              )
            ),
            ObjectAttributeList = list(
              list(
                Key = list(
                  SchemaArn = "string",
                  FacetName = "string",
                  Name = "string"
                ),
                Value = list(
                  StringValue = "string",
                  BinaryValue = raw,
                  BooleanValue = TRUE|FALSE,
                  NumberValue = "string",
                  DatetimeValue = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            ),
            ParentReference = list(
              Selector = "string"
            ),
            LinkName = "string",
            BatchReferenceName = "string"
          ),
          AttachObject = list(
            ParentReference = list(
              Selector = "string"
            ),
            ChildReference = list(
              Selector = "string"
            ),
            LinkName = "string"
          ),
          DetachObject = list(
            ParentReference = list(
              Selector = "string"
            ),
            LinkName = "string",
            BatchReferenceName = "string"
          ),
          UpdateObjectAttributes = list(
            ObjectReference = list(
              Selector = "string"
            ),
            AttributeUpdates = list(
              list(
                ObjectAttributeKey = list(
                  SchemaArn = "string",
                  FacetName = "string",
                  Name = "string"
                ),
                ObjectAttributeAction = list(
                  ObjectAttributeActionType = "CREATE_OR_UPDATE"|"DELETE",
                  ObjectAttributeUpdateValue = list(
                    StringValue = "string",
                    BinaryValue = raw,
                    BooleanValue = TRUE|FALSE,
                    NumberValue = "string",
                    DatetimeValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          ),
          DeleteObject = list(
            ObjectReference = list(
              Selector = "string"
            )
          ),
          AddFacetToObject = list(
            SchemaFacet = list(
              SchemaArn = "string",
              FacetName = "string"
            ),
            ObjectAttributeList = list(
              list(
                Key = list(
                  SchemaArn = "string",
                  FacetName = "string",
                  Name = "string"
                ),
                Value = list(
                  StringValue = "string",
                  BinaryValue = raw,
                  BooleanValue = TRUE|FALSE,
                  NumberValue = "string",
                  DatetimeValue = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            ),
            ObjectReference = list(
              Selector = "string"
            )
          ),
          RemoveFacetFromObject = list(
            SchemaFacet = list(
              SchemaArn = "string",
              FacetName = "string"
            ),
            ObjectReference = list(
              Selector = "string"
            )
          ),
          AttachPolicy = list(
            PolicyReference = list(
              Selector = "string"
            ),
            ObjectReference = list(
              Selector = "string"
            )
          ),
          DetachPolicy = list(
            PolicyReference = list(
              Selector = "string"
            ),
            ObjectReference = list(
              Selector = "string"
            )
          ),
          CreateIndex = list(
            OrderedIndexedAttributeList = list(
              list(
                SchemaArn = "string",
                FacetName = "string",
                Name = "string"
              )
            ),
            IsUnique = TRUE|FALSE,
            ParentReference = list(
              Selector = "string"
            ),
            LinkName = "string",
            BatchReferenceName = "string"
          ),
          AttachToIndex = list(
            IndexReference = list(
              Selector = "string"
            ),
            TargetReference = list(
              Selector = "string"
            )
          ),
          DetachFromIndex = list(
            IndexReference = list(
              Selector = "string"
            ),
            TargetReference = list(
              Selector = "string"
            )
          ),
          AttachTypedLink = list(
            SourceObjectReference = list(
              Selector = "string"
            ),
            TargetObjectReference = list(
              Selector = "string"
            ),
            TypedLinkFacet = list(
              SchemaArn = "string",
              TypedLinkName = "string"
            ),
            Attributes = list(
              list(
                AttributeName = "string",
                Value = list(
                  StringValue = "string",
                  BinaryValue = raw,
                  BooleanValue = TRUE|FALSE,
                  NumberValue = "string",
                  DatetimeValue = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            )
          ),
          DetachTypedLink = list(
            TypedLinkSpecifier = list(
              TypedLinkFacet = list(
                SchemaArn = "string",
                TypedLinkName = "string"
              ),
              SourceObjectReference = list(
                Selector = "string"
              ),
              TargetObjectReference = list(
                Selector = "string"
              ),
              IdentityAttributeValues = list(
                list(
                  AttributeName = "string",
                  Value = list(
                    StringValue = "string",
                    BinaryValue = raw,
                    BooleanValue = TRUE|FALSE,
                    NumberValue = "string",
                    DatetimeValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          ),
          UpdateLinkAttributes = list(
            TypedLinkSpecifier = list(
              TypedLinkFacet = list(
                SchemaArn = "string",
                TypedLinkName = "string"
              ),
              SourceObjectReference = list(
                Selector = "string"
              ),
              TargetObjectReference = list(
                Selector = "string"
              ),
              IdentityAttributeValues = list(
                list(
                  AttributeName = "string",
                  Value = list(
                    StringValue = "string",
                    BinaryValue = raw,
                    BooleanValue = TRUE|FALSE,
                    NumberValue = "string",
                    DatetimeValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            ),
            AttributeUpdates = list(
              list(
                AttributeKey = list(
                  SchemaArn = "string",
                  FacetName = "string",
                  Name = "string"
                ),
                AttributeAction = list(
                  AttributeActionType = "CREATE_OR_UPDATE"|"DELETE",
                  AttributeUpdateValue = list(
                    StringValue = "string",
                    BinaryValue = raw,
                    BooleanValue = TRUE|FALSE,
                    NumberValue = "string",
                    DatetimeValue = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
