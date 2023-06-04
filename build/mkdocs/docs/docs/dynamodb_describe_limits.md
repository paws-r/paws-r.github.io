<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current provisioned-capacity quotas for your Amazon Web Services account in a Region, both for the Region as a whole and for any one DynamoDB table that you create there

### Description

Returns the current provisioned-capacity quotas for your Amazon Web
Services account in a Region, both for the Region as a whole and for any
one DynamoDB table that you create there.

When you establish an Amazon Web Services account, the account has
initial quotas on the maximum read capacity units and write capacity
units that you can provision across all of your DynamoDB tables in a
given Region. Also, there are per-table quotas that apply when you
create a table there. For more information, see [Service, Account, and
Table
Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ServiceQuotas.html)
page in the *Amazon DynamoDB Developer Guide*.

Although you can increase these quotas by filing a case at Amazon Web
Services Support Center, obtaining the increase is not instantaneous.
The `describe_limits` action lets you write code to compare the capacity
you are currently using to those quotas imposed by your account so that
you have enough time to apply for an increase before you hit a quota.

For example, you could use one of the Amazon Web Services SDKs to do the
following:

1.  Call `describe_limits` for a particular Region to obtain your
    current account quotas on provisioned capacity there.

2.  Create a variable to hold the aggregate read capacity units
    provisioned for all your tables in that Region, and one to hold the
    aggregate write capacity units. Zero them both.

3.  Call `list_tables` to obtain a list of all your DynamoDB tables.

4.  For each table name listed by `list_tables`, do the following:

    -   Call `describe_table` with the table name.

    -   Use the data returned by `describe_table` to add the read
        capacity units and write capacity units provisioned for the
        table itself to your variables.

    -   If the table has one or more global secondary indexes (GSIs),
        loop over these GSIs and add their provisioned capacity values
        to your variables as well.

5.  Report the account quotas for that Region returned by
    `describe_limits`, along with the total current provisioned capacity
    levels you have calculated.

This will let you see whether you are getting close to your
account-level quotas.

The per-table quotas apply only when you are creating a new table. They
restrict the sum of the provisioned capacity of the new table itself and
all its global secondary indexes.

For existing tables and their GSIs, DynamoDB doesn't let you increase
provisioned capacity extremely rapidly, but the only quota that applies
is that the aggregate provisioned capacity over all your tables and GSIs
cannot exceed either of the per-account quotas.

`describe_limits` should only be called periodically. You can expect
throttling errors if you call it more than once in a minute.

The `describe_limits` Request element has no content.

### Usage

    dynamodb_describe_limits()

### Value

A list with the following syntax:

    list(
      AccountMaxReadCapacityUnits = 123,
      AccountMaxWriteCapacityUnits = 123,
      TableMaxReadCapacityUnits = 123,
      TableMaxWriteCapacityUnits = 123
    )

### Request syntax

    svc$describe_limits()

### Examples

    ## Not run: 
    # The following example returns the maximum read and write capacity units
    # per table, and for the AWS account, in the current AWS region.
    svc$describe_limits()

    ## End(Not run)
