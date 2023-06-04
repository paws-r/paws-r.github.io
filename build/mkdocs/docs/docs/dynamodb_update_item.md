<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Edits an existing item's attributes, or adds a new item to the table if it does not already exist

### Description

Edits an existing item's attributes, or adds a new item to the table if
it does not already exist. You can put, delete, or add attribute values.
You can also perform a conditional update on an existing item (insert a
new attribute name-value pair if it doesn't exist, or replace an
existing name-value pair if it has certain expected attribute values).

You can also return the item's attribute values in the same
`update_item` operation using the `ReturnValues` parameter.

### Usage

    dynamodb_update_item(TableName, Key, AttributeUpdates, Expected,
      ConditionalOperator, ReturnValues, ReturnConsumedCapacity,
      ReturnItemCollectionMetrics, UpdateExpression, ConditionExpression,
      ExpressionAttributeNames, ExpressionAttributeValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_update_item_:_TableName">TableName</code></td>
<td><p>[required] The name of the table containing the item to
update.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_update_item_:_Key">Key</code></td>
<td><p>[required] The primary key of the item to be updated. Each
element consists of an attribute name and a value for that
attribute.</p>
<p>For the primary key, you must provide all of the attributes. For
example, with a simple primary key, you only need to provide a value for
the partition key. For a composite primary key, you must provide values
for both the partition key and the sort key.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_item_:_AttributeUpdates">AttributeUpdates</code></td>
<td><p>This is a legacy parameter. Use <code>UpdateExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_update_item_:_Expected">Expected</code></td>
<td><p>This is a legacy parameter. Use <code>ConditionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_item_:_ConditionalOperator">ConditionalOperator</code></td>
<td><p>This is a legacy parameter. Use <code>ConditionExpression</code>
instead. For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a>
in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_item_:_ReturnValues">ReturnValues</code></td>
<td><p>Use <code>ReturnValues</code> if you want to get the item
attributes as they appear before or after they are successfully updated.
For <code>update_item</code>, the valid values are:</p>
<ul>
<li><p><code>NONE</code> - If <code>ReturnValues</code> is not
specified, or if its value is <code>NONE</code>, then nothing is
returned. (This setting is the default for
<code>ReturnValues</code>.)</p></li>
<li><p><code>ALL_OLD</code> - Returns all of the attributes of the item,
as they appeared before the UpdateItem operation.</p></li>
<li><p><code>UPDATED_OLD</code> - Returns only the updated attributes,
as they appeared before the UpdateItem operation.</p></li>
<li><p><code>ALL_NEW</code> - Returns all of the attributes of the item,
as they appear after the UpdateItem operation.</p></li>
<li><p><code>UPDATED_NEW</code> - Returns only the updated attributes,
as they appear after the UpdateItem operation.</p></li>
</ul>
<p>There is no additional cost associated with requesting a return value
aside from the small network and processing overhead of receiving a
larger response. No read capacity units are consumed.</p>
<p>The values returned are strongly consistent.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_item_:_ReturnConsumedCapacity">ReturnConsumedCapacity</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_item_:_ReturnItemCollectionMetrics">ReturnItemCollectionMetrics</code></td>
<td><p>Determines whether item collection metrics are returned. If set
to <code>SIZE</code>, the response includes statistics about item
collections, if any, that were modified during the operation are
returned in the response. If set to <code>NONE</code> (the default), no
statistics are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_item_:_UpdateExpression">UpdateExpression</code></td>
<td><p>An expression that defines one or more attributes to be updated,
the action to be performed on them, and new values for them.</p>
<p>The following action values are available for
<code>UpdateExpression</code>.</p>
<ul>
<li><p><code>SET</code> - Adds one or more attributes and values to an
item. If any of these attributes already exist, they are replaced by the
new values. You can also use <code>SET</code> to add or subtract from an
attribute that is of type Number. For example: <code
style="white-space: pre;">⁠SET myNum = myNum + :val⁠</code></p>
<p><code>SET</code> supports the following functions:</p>
<ul>
<li><p><code>if_not_exists (path, operand)</code> - if the item does not
contain an attribute at the specified path, then
<code>if_not_exists</code> evaluates to operand; otherwise, it evaluates
to path. You can use this function to avoid overwriting an attribute
that may already be present in the item.</p></li>
<li><p><code>list_append (operand, operand)</code> - evaluates to a list
with a new element added to it. You can append the new element to the
start or the end of the list by reversing the order of the
operands.</p></li>
</ul>
<p>These function names are case-sensitive.</p></li>
<li><p><code>REMOVE</code> - Removes one or more attributes from an
item.</p></li>
<li><p><code>ADD</code> - Adds the specified value to the item, if the
attribute does not already exist. If the attribute does exist, then the
behavior of <code>ADD</code> depends on the data type of the
attribute:</p>
<ul>
<li><p>If the existing attribute is a number, and if <code>Value</code>
is also a number, then <code>Value</code> is mathematically added to the
existing attribute. If <code>Value</code> is a negative number, then it
is subtracted from the existing attribute.</p>
<p>If you use <code>ADD</code> to increment or decrement a number value
for an item that doesn't exist before the update, DynamoDB uses
<code>0</code> as the initial value.</p>
<p>Similarly, if you use <code>ADD</code> for an existing item to
increment or decrement an attribute value that doesn't exist before the
update, DynamoDB uses <code>0</code> as the initial value. For example,
suppose that the item you want to update doesn't have an attribute named
<code>itemcount</code>, but you decide to <code>ADD</code> the number
<code>3</code> to this attribute anyway. DynamoDB will create the
<code>itemcount</code> attribute, set its initial value to
<code>0</code>, and finally add <code>3</code> to it. The result will be
a new <code>itemcount</code> attribute in the item, with a value of
<code>3</code>.</p></li>
<li><p>If the existing data type is a set and if <code>Value</code> is
also a set, then <code>Value</code> is added to the existing set. For
example, if the attribute value is the set <code
style="white-space: pre;">⁠[1,2]⁠</code>, and the <code>ADD</code> action
specified <code style="white-space: pre;">⁠[3]⁠</code>, then the final
attribute value is <code style="white-space: pre;">⁠[1,2,3]⁠</code>. An
error occurs if an <code>ADD</code> action is specified for a set
attribute and the attribute type specified does not match the existing
set type.</p>
<p>Both sets must have the same primitive data type. For example, if the
existing data type is a set of strings, the <code>Value</code> must also
be a set of strings.</p></li>
</ul>
<p>The <code>ADD</code> action only supports Number and set data types.
In addition, <code>ADD</code> can only be used on top-level attributes,
not nested attributes.</p></li>
<li><p><code>DELETE</code> - Deletes an element from a set.</p>
<p>If a set of values is specified, then those values are subtracted
from the old set. For example, if the attribute value was the set <code
style="white-space: pre;">⁠[a,b,c]⁠</code> and the <code>DELETE</code>
action specifies <code style="white-space: pre;">⁠[a,c]⁠</code>, then the
final attribute value is <code style="white-space: pre;">⁠[b]⁠</code>.
Specifying an empty set is an error.</p>
<p>The <code>DELETE</code> action only supports set data types. In
addition, <code>DELETE</code> can only be used on top-level attributes,
not nested attributes.</p></li>
</ul>
<p>You can have many actions in a single expression, such as the
following: <code
style="white-space: pre;">⁠SET a=:value1, b=:value2 DELETE :value3, :value4, :value5⁠</code></p>
<p>For more information on update expressions, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.UpdateExpressions.html">Modifying
Items and Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_item_:_ConditionExpression">ConditionExpression</code></td>
<td><p>A condition that must be satisfied in order for a conditional
update to succeed.</p>
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
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Specifying
Conditions</a> in the <em>Amazon DynamoDB Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_item_:_ExpressionAttributeNames">ExpressionAttributeNames</code></td>
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
Words</a> in the <em>Amazon DynamoDB Developer Guide</em>.) To work
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
<p>For more information about expression attribute names, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html">Specifying
Item Attributes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_item_:_ExpressionAttributeValues">ExpressionAttributeValues</code></td>
<td><p>One or more values that can be substituted in an expression.</p>
<p>Use the <strong>:</strong> (colon) character in an expression to
dereference an attribute value. For example, suppose that you wanted to
check whether the value of the <code>ProductStatus</code> attribute was
one of the following:</p>
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

    svc$update_item(
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
      AttributeUpdates = list(
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
          Action = "ADD"|"PUT"|"DELETE"
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
      UpdateExpression = "string",
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
    # This example updates an item in the Music table. It adds a new attribute
    # (Year) and modifies the AlbumTitle attribute.  All of the attributes in
    # the item, as they appear after the update, are returned in the response.
    svc$update_item(
      ExpressionAttributeNames = list(
        `#AT` = "AlbumTitle",
        `#Y` = "Year"
      ),
      ExpressionAttributeValues = list(
        `:t` = list(
          S = "Louder Than Ever"
        ),
        `:y` = list(
          N = "2015"
        )
      ),
      Key = list(
        Artist = list(
          S = "Acme Band"
        ),
        SongTitle = list(
          S = "Happy Day"
        )
      ),
      ReturnValues = "ALL_NEW",
      TableName = "Music",
      UpdateExpression = "SET #Y = :y, #AT = :t"
    )

    ## End(Not run)
