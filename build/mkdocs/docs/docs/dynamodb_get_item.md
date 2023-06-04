<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_get_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetItem operation returns a set of attributes for the item with the given primary key

### Description

The `get_item` operation returns a set of attributes for the item with
the given primary key. If there is no matching item, `get_item` does not
return any data and there will be no `Item` element in the response.

`get_item` provides an eventually consistent read by default. If your
application requires a strongly consistent read, set `ConsistentRead` to
`true`. Although a strongly consistent read might take more time than an
eventually consistent read, it always returns the last updated value.

### Usage

    dynamodb_get_item(TableName, Key, AttributesToGet, ConsistentRead,
      ReturnConsumedCapacity, ProjectionExpression, ExpressionAttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_get_item_:_TableName">TableName</code></td>
<td><p>[required] The name of the table containing the requested
item.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_get_item_:_Key">Key</code></td>
<td><p>[required] A map of attribute names to
<code>AttributeValue</code> objects, representing the primary key of the
item to retrieve.</p>
<p>For the primary key, you must provide all of the attributes. For
example, with a simple primary key, you only need to provide a value for
the partition key. For a composite primary key, you must provide values
for both the partition key and the sort key.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_get_item_:_AttributesToGet">AttributesToGet</code></td>
<td><p>This is a legacy parameter. Use <code>ProjectionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_get_item_:_ConsistentRead">ConsistentRead</code></td>
<td><p>Determines the read consistency model: If set to
<code>true</code>, then the operation uses strongly consistent reads;
otherwise, the operation uses eventually consistent reads.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_get_item_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_get_item_:_ProjectionExpression">ProjectionExpression</code></td>
<td><p>A string that identifies one or more attributes to retrieve from
the table. These attributes can include scalars, sets, or elements of a
JSON document. The attributes in the expression must be separated by
commas.</p>
<p>If no attribute names are specified, then all attributes are
returned. If any of the requested attributes are not found, they do not
appear in the result.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Specifying
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_get_item_:_ExpressionAttributeNames">ExpressionAttributeNames</code></td>
<td><p>One or more substitution tokens for attribute names in an
expression. The following are some use cases for using
<code>ExpressionAttributeNames</code>:</p>
<ul>
<li><p>To access an attribute whose name conflicts with a DynamoDB
reserved word.</p></li>
<li><p>To create a placeholder for repeating occurrences of an attribute
name in an expression.</p></li>
<li><p>To prevent special characters in an attribute name from being
misinterpreted in an expression.</p></li>
</ul>
<p>Use the <strong>#</strong> character in an expression to dereference
an attribute name. For example, consider the following attribute
name:</p>
<ul>
<li><p><code>Percentile</code></p></li>
</ul>
<p>The name of this attribute conflicts with a reserved word, so it
cannot be used directly in an expression. (For the complete list of
reserved words, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
Words</a> in the <em>Amazon DynamoDB Developer Guide</em>). To work
around this, you could specify the following for
<code>ExpressionAttributeNames</code>:</p>
<ul>
<li><p><code>{"#P":"Percentile"}</code></p></li>
</ul>
<p>You could then use this substitution in an expression, as in this
example:</p>
<ul>
<li><p><code style="white-space: pre;">⁠#P = :val⁠</code></p></li>
</ul>
<p>Tokens that begin with the <strong>:</strong> character are
<em>expression attribute values</em>, which are placeholders for the
actual value at runtime.</p>
<p>For more information on expression attribute names, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Specifying
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Item = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      ),
      ConsumedCapacity = list(
        TableName = "string",
        CapacityUnits = 123.0,
        ReadCapacityUnits = 123.0,
        WriteCapacityUnits = 123.0,
        Table = list(
          ReadCapacityUnits = 123.0,
          WriteCapacityUnits = 123.0,
          CapacityUnits = 123.0
        ),
        LocalSecondaryIndexes = list(
          list(
            ReadCapacityUnits = 123.0,
            WriteCapacityUnits = 123.0,
            CapacityUnits = 123.0
          )
        ),
        GlobalSecondaryIndexes = list(
          list(
            ReadCapacityUnits = 123.0,
            WriteCapacityUnits = 123.0,
            CapacityUnits = 123.0
          )
        )
      )
    )

### Request syntax

    svc$get_item(
      TableName = "string",
      Key = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      ),
      AttributesToGet = list(
        "string"
      ),
      ConsistentRead = TRUE|FALSE,
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      ProjectionExpression = "string",
      ExpressionAttributeNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example retrieves an item from the Music table. The table has a
    # partition key and a sort key (Artist and SongTitle), so you must specify
    # both of these attributes.
    svc$get_item(
      Key = list(
        Artist = list(
          S = "Acme Band"
        ),
        SongTitle = list(
          S = "Happy Day"
        )
      ),
      TableName = "Music"
    )

    ## End(Not run)
