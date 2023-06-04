<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current list of Amazon Web Services services and a list of service categories for each service

### Description

Returns the current list of Amazon Web Services services and a list of
service categories for each service. You then use service names and
categories in your `create_case` requests. Each Amazon Web Services
service has its own set of categories.

The service codes and category codes correspond to the values that
appear in the **Service** and **Category** lists on the Amazon Web
Services Support Center Create Case page. The values in those fields
don't necessarily match the service codes and categories returned by the
`describe_services` operation. Always use the service codes and
categories that the `describe_services` operation returns, so that you
have the most recent set of service and category codes.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_describe_services(serviceCodeList, language)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_services_:_serviceCodeList">serviceCodeList</code></td>
<td><p>A JSON-formatted list of service codes available for Amazon Web
Services services.</p></td>
</tr>
<tr class="even">
<td><code id="support_describe_services_:_language">language</code></td>
<td><p>The language in which Amazon Web Services Support handles the
case. Amazon Web Services Support currently supports Chinese (“zh”),
English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the
ISO 639-1 code for the <code>language</code> parameter if you want
support in that language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      services = list(
        list(
          code = "string",
          name = "string",
          categories = list(
            list(
              code = "string",
              name = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_services(
      serviceCodeList = list(
        "string"
      ),
      language = "string"
    )
