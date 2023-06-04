<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_variable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a variable

### Description

Creates a variable.

### Usage

    frauddetector_create_variable(name, dataType, dataSource, defaultValue,
      description, variableType, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_create_variable_:_name">name</code></td>
<td><p>[required] The name of the variable.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_variable_:_dataType">dataType</code></td>
<td><p>[required] The data type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_variable_:_dataSource">dataSource</code></td>
<td><p>[required] The source of the data.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_variable_:_defaultValue">defaultValue</code></td>
<td><p>[required] The default value for the variable when no value is
received.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_variable_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_variable_:_variableType">variableType</code></td>
<td><p>The variable type. For more information see <a
href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable
types</a>.</p>
<p>Valid Values:
<code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code></p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_create_variable_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_variable(
      name = "string",
      dataType = "STRING"|"INTEGER"|"FLOAT"|"BOOLEAN",
      dataSource = "EVENT"|"MODEL_SCORE"|"EXTERNAL_MODEL_SCORE",
      defaultValue = "string",
      description = "string",
      variableType = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
