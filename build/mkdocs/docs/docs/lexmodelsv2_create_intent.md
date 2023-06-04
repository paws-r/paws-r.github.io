<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an intent

### Description

Creates an intent.

To define the interaction between the user and your bot, you define one
or more intents. For example, for a pizza ordering bot you would create
an `OrderPizza` intent.

When you create an intent, you must provide a name. You can optionally
provide the following:

-   Sample utterances. For example, "I want to order a pizza" and "Can I
    order a pizza." You can't provide utterances for built-in intents.

-   Information to be gathered. You specify slots for the information
    that you bot requests from the user. You can specify standard slot
    types, such as date and time, or custom slot types for your
    application.

-   How the intent is fulfilled. You can provide a Lambda function or
    configure the intent to return the intent information to your client
    application. If you use a Lambda function, Amazon Lex invokes the
    function when all of the intent information is available.

-   A confirmation prompt to send to the user to confirm an intent. For
    example, "Shall I order your pizza?"

-   A conclusion statement to send to the user after the intent is
    fulfilled. For example, "I ordered your pizza."

-   A follow-up prompt that asks the user for additional activity. For
    example, "Do you want a drink with your pizza?"

### Usage

    lexmodelsv2_create_intent(intentName, description,
      parentIntentSignature, sampleUtterances, dialogCodeHook,
      fulfillmentCodeHook, intentConfirmationSetting, intentClosingSetting,
      inputContexts, outputContexts, kendraConfiguration, botId, botVersion,
      localeId, initialResponseSetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_intentName">intentName</code></td>
<td><p>[required] The name of the intent. Intent names must be unique in
the locale that contains the intent and cannot match the name of any
built-in intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_intent_:_description">description</code></td>
<td><p>A description of the intent. Use the description to help identify
the intent in lists.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_parentIntentSignature">parentIntentSignature</code></td>
<td><p>A unique identifier for the built-in intent to base this intent
on.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_intent_:_sampleUtterances">sampleUtterances</code></td>
<td><p>An array of strings that a user might say to signal the intent.
For example, "I want a pizza", or "I want a {PizzaSize} pizza".</p>
<p>In an utterance, slot names are enclosed in curly braces ("{", "}")
to indicate where they should be displayed in the utterance shown to the
user..</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_dialogCodeHook">dialogCodeHook</code></td>
<td><p>Specifies that Amazon Lex invokes the alias Lambda function for
each user input. You can invoke this Lambda function to personalize user
interaction.</p>
<p>For example, suppose that your bot determines that the user's name is
John. You Lambda function might retrieve John's information from a
backend database and prepopulate some of the values. For example, if you
find that John is gluten intolerant, you might set the corresponding
intent slot, <code>glutenIntolerant</code> to <code>true</code>. You
might find John's phone number and set the corresponding session
attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_intent_:_fulfillmentCodeHook">fulfillmentCodeHook</code></td>
<td><p>Specifies that Amazon Lex invokes the alias Lambda function when
the intent is ready for fulfillment. You can invoke this function to
complete the bot's transaction with the user.</p>
<p>For example, in a pizza ordering bot, the Lambda function can look up
the closest pizza restaurant to the customer's location and then place
an order on the customer's behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_intentConfirmationSetting">intentConfirmationSetting</code></td>
<td><p>Provides prompts that Amazon Lex sends to the user to confirm the
completion of an intent. If the user answers "no," the settings contain
a statement that is sent to the user to end the intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_intent_:_intentClosingSetting">intentClosingSetting</code></td>
<td><p>Sets the response that Amazon Lex sends to the user when the
intent is closed.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_inputContexts">inputContexts</code></td>
<td><p>A list of contexts that must be active for this intent to be
considered by Amazon Lex.</p>
<p>When an intent has an input context list, Amazon Lex only considers
using the intent in an interaction with the user when the specified
contexts are included in the active context list for the session. If the
contexts are not active, then Amazon Lex will not use the intent.</p>
<p>A context can be automatically activated using the
<code>outputContexts</code> property or it can be set at runtime.</p>
<p>For example, if there are two intents with different input contexts
that respond to the same utterances, only the intent with the active
context will respond.</p>
<p>An intent may have up to 5 input contexts. If an intent has multiple
input contexts, all of the contexts must be active to consider the
intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_create_intent_:_outputContexts">outputContexts</code></td>
<td><p>A lists of contexts that the intent activates when it is
fulfilled.</p>
<p>You can use an output context to indicate the intents that Amazon Lex
should consider for the next turn of the conversation with a
customer.</p>
<p>When you use the <code>outputContextsList</code> property, all of the
contexts specified in the list are activated when the intent is
fulfilled. You can set up to 10 output contexts. You can also set the
number of conversation turns that the context should be active, or the
length of time that the context should be active.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_kendraConfiguration">kendraConfiguration</code></td>
<td><p>Configuration information required to use the
<code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
Kendra index. The <code>AMAZON.KendraSearchIntent</code> intent is
called when Amazon Lex can't determine another intent to
invoke.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_intent_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with this
intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_botVersion">botVersion</code></td>
<td><p>[required] The identifier of the version of the bot associated
with this intent.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_create_intent_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where this
intent is used. All of the bots, slot types, and slots used by the
intent must have the same locale. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_create_intent_:_initialResponseSetting">initialResponseSetting</code></td>
<td><p>Configuration settings for the response that is sent to the user
at the beginning of a conversation, before eliciting slot
values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      intentId = "string",
      intentName = "string",
      description = "string",
      parentIntentSignature = "string",
      sampleUtterances = list(
        list(
          utterance = "string"
        )
      ),
      dialogCodeHook = list(
        enabled = TRUE|FALSE
      ),
      fulfillmentCodeHook = list(
        enabled = TRUE|FALSE,
        postFulfillmentStatusSpecification = list(
          successResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          failureResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          successNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          successConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          failureNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          failureConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          timeoutNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          timeoutConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          )
        ),
        fulfillmentUpdatesSpecification = list(
          active = TRUE|FALSE,
          startResponse = list(
            delayInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          updateResponse = list(
            frequencyInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutInSeconds = 123
        ),
        active = TRUE|FALSE
      ),
      intentConfirmationSetting = list(
        promptSpecification = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          maxRetries = 123,
          allowInterrupt = TRUE|FALSE,
          messageSelectionStrategy = "Random"|"Ordered",
          promptAttemptsSpecification = list(
            list(
              allowInterrupt = TRUE|FALSE,
              allowedInputTypes = list(
                allowAudioInput = TRUE|FALSE,
                allowDTMFInput = TRUE|FALSE
              ),
              audioAndDTMFInputSpecification = list(
                startTimeoutMs = 123,
                audioSpecification = list(
                  maxLengthMs = 123,
                  endTimeoutMs = 123
                ),
                dtmfSpecification = list(
                  maxLength = 123,
                  endTimeoutMs = 123,
                  deletionCharacter = "string",
                  endCharacter = "string"
                )
              ),
              textInputSpecification = list(
                startTimeoutMs = 123
              )
            )
          )
        ),
        declinationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        confirmationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        confirmationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        confirmationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        declinationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        declinationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        failureResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        failureNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        failureConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        ),
        elicitationCodeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          invocationLabel = "string"
        )
      ),
      intentClosingSetting = list(
        closingResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        )
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      ),
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterStringEnabled = TRUE|FALSE,
        queryFilterString = "string"
      ),
      botId = "string",
      botVersion = "string",
      localeId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      initialResponseSetting = list(
        initialResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$create_intent(
      intentName = "string",
      description = "string",
      parentIntentSignature = "string",
      sampleUtterances = list(
        list(
          utterance = "string"
        )
      ),
      dialogCodeHook = list(
        enabled = TRUE|FALSE
      ),
      fulfillmentCodeHook = list(
        enabled = TRUE|FALSE,
        postFulfillmentStatusSpecification = list(
          successResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          failureResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          successNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          successConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          failureNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          failureConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          timeoutNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          timeoutConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          )
        ),
        fulfillmentUpdatesSpecification = list(
          active = TRUE|FALSE,
          startResponse = list(
            delayInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          updateResponse = list(
            frequencyInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutInSeconds = 123
        ),
        active = TRUE|FALSE
      ),
      intentConfirmationSetting = list(
        promptSpecification = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          maxRetries = 123,
          allowInterrupt = TRUE|FALSE,
          messageSelectionStrategy = "Random"|"Ordered",
          promptAttemptsSpecification = list(
            list(
              allowInterrupt = TRUE|FALSE,
              allowedInputTypes = list(
                allowAudioInput = TRUE|FALSE,
                allowDTMFInput = TRUE|FALSE
              ),
              audioAndDTMFInputSpecification = list(
                startTimeoutMs = 123,
                audioSpecification = list(
                  maxLengthMs = 123,
                  endTimeoutMs = 123
                ),
                dtmfSpecification = list(
                  maxLength = 123,
                  endTimeoutMs = 123,
                  deletionCharacter = "string",
                  endCharacter = "string"
                )
              ),
              textInputSpecification = list(
                startTimeoutMs = 123
              )
            )
          )
        ),
        declinationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        confirmationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        confirmationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        confirmationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        declinationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        declinationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        failureResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        failureNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        failureConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        ),
        elicitationCodeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          invocationLabel = "string"
        )
      ),
      intentClosingSetting = list(
        closingResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        )
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      ),
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterStringEnabled = TRUE|FALSE,
        queryFilterString = "string"
      ),
      botId = "string",
      botVersion = "string",
      localeId = "string",
      initialResponseSetting = list(
        initialResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        )
      )
    )
