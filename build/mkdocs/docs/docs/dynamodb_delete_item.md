<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_delete_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single item in a table by primary key

### Description

Deletes a single item in a table by primary key. You can perform a
conditional delete operation that deletes the item if it exists, or if
it has an expected attribute value.

In addition to deleting an item, you can also return the item's
attribute values in the same operation, using the `ReturnValues`
parameter.

Unless you specify conditions, the `delete_item` is an idempotent
operation; running it multiple times on the same item or attribute does
*not* result in an error response.

Conditional deletes are useful for deleting items only if specific
conditions are met. If those conditions are met, DynamoDB performs the
delete. Otherwise, the item is not deleted.

### Usage

    dynamodb_delete_item(TableName, Key, Expected, ConditionalOperator,
      ReturnValues, ReturnConsumedCapacity, ReturnItemCollectionMetrics,
      ConditionExpression, ExpressionAttributeNames,
      ExpressionAttributeValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_delete_item_:_TableName">TableName</code></td>
<td><p>[required] The name of the table from which to delete the
item.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_delete_item_:_Key">Key</code></td>
<td><p>[required] A map of attribute names to
<code>AttributeValue</code> objects, representing the primary key of the
item to delete.</p>
<p>For the primary key, you must provide all of the key attributes. For
example, with a simple primary key, you only need to provide a value for
the partition key. For a composite primary key, you must provide values
for both the partition key and the sort key.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_delete_item_:_Expected">Expected</code></td>
<td><p>This is a legacy parameter. Use <code>ConditionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_delete_item_:_ConditionalOperator">ConditionalOperator</code></td>
<td><p>This is a legacy parameter. Use <code>ConditionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_delete_item_:_ReturnValues">ReturnValues</code></td>
<td><p>Use <code>ReturnValues</code> if you want to get the item
attributes as they appeared before they were deleted. For
<code>delete_item</code>, the valid values are:</p>
<ul>
<li><p><code>NONE</code> - If <code>ReturnValues</code> is not
specified, or if its value is <code>NONE</code>, then nothing is
returned. (This setting is the default for
<code>ReturnValues</code>.)</p></li>
<li><p><code>ALL_OLD</code> - The content of the old item is
returned.</p></li>
</ul>
<p>There is no additional cost associated with requesting a return value
aside from the small network and processing overhead of receiving a
larger response. No read capacity units are consumed.</p>
<p>The <code>ReturnValues</code> parameter is used by several DynamoDB
operations; however, <code>delete_item</code> does not recognize any
values other than <code>NONE</code> or <code>ALL_OLD</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_delete_item_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_delete_item_:_ReturnItemCollectionMetrics">ReturnItemCollectionMetrics</code></td>
<td><p>Determines whether item collection metrics are returned. If set
to <code>SIZE</code>, the response includes statistics about item
collections, if any, that were modified during the operation are
returned in the response. If set to <code>NONE</code> (the default), no
statistics are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_delete_item_:_ConditionExpression">ConditionExpression</code></td>
<td><p>A condition that must be satisfied in order for a conditional
<code>delete_item</code> to succeed.</p>
<p>An expression can contain any of the following:</p>
<ul>
<li><p>Functions:
<code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code></p>
<p>These function names are case-sensitive.</p></li>
<li><p>Comparison operators: <code
style="white-space: pre;">⁠= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN ⁠</code></p></li>
<li><p>Logical operators: <code>AND | OR | NOT</code></p></li>
</ul>
<p>For more information about condition expressions, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition
Expressions</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_delete_item_:_ExpressionAttributeNames">ExpressionAttributeNames</code></td>
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
<tr class="even">
<td><code
id="dynamodb_delete_item_:_ExpressionAttributeValues">ExpressionAttributeValues</code></td>
<td><p>One or more values that can be substituted in an expression.</p>
<p>Use the <strong>:</strong> (colon) character in an expression to
dereference an attribute value. For example, suppose that you wanted to
check whether the value of the <em>ProductStatus</em> attribute was one
of the following:</p>
<p><code>Available | Backordered | Discontinued</code></p>
<p>You would first need to specify
<code>ExpressionAttributeValues</code> as follows:</p>
<p><code
style="white-space: pre;">⁠{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }⁠</code></p>
<p>You could then use these values in an expression, such as this:</p>
<p><code
style="white-space: pre;">⁠ProductStatus IN (:avail, :back, :disc)⁠</code></p>
<p>For more information on expression attribute values, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition
Expressions</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
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
      ),
      ItemCollectionMetrics = list(
        ItemCollectionKey = list(
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
        SizeEstimateRangeGB = list(
          123.0
        )
      )
    )

### Request syntax

    svc$delete_item(
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
      Expected = list(
        list(
          Value = list(
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
          ),
          Exists = TRUE|FALSE,
          ComparisonOperator = "EQ"|"NE"|"IN"|"LE"|"LT"|"GE"|"GT"|"BETWEEN"|"NOT_NULL"|"NULL"|"CONTAINS"|"NOT_CONTAINS"|"BEGINS_WITH",
          AttributeValueList = list(
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
          )
        )
      ),
      ConditionalOperator = "AND"|"OR",
      ReturnValues = "NONE"|"ALL_OLD"|"UPDATED_OLD"|"ALL_NEW"|"UPDATED_NEW",
      ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
      ReturnItemCollectionMetrics = "SIZE"|"NONE",
      ConditionExpression = "string",
      ExpressionAttributeNames = list(
        "string"
      ),
      ExpressionAttributeValues = list(
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
      )
    )

### Examples

    ## Not run: 
    # This example deletes an item from the Music table.
    svc$delete_item(
      Key = list(
        Artist = list(
          S = "No One You Know"
        ),
        SongTitle = list(
          S = "Scared of My Shadow"
        )
      ),
      TableName = "Music"
    )

    ## End(Not run)
