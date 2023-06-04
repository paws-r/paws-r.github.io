<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_list_hsms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is documentation for AWS CloudHSM Classic

### Description

This is documentation for **AWS CloudHSM Classic**. For more
information, see [AWS CloudHSM Classic
FAQs](https://aws.amazon.com/cloudhsm/faqs/), the AWS CloudHSM Classic
User Guide, and the [AWS CloudHSM Classic API
Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS
CloudHSM](https://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
[AWS CloudHSM API
Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves the identifiers of all of the HSMs provisioned for the current
customer.

This operation supports pagination with the use of the `NextToken`
member. If more results are available, the `NextToken` member of the
response contains a token that you pass in the next call to `list_hsms`
to retrieve the next set of items.

### Usage

    cloudhsm_list_hsms(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_list_hsms_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value from a previous call to
<code>list_hsms</code>. Pass null if this is the first call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmList = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_hsms(
      NextToken = "string"
    )
