page 64064 "SSCW - Purchase Invoice Lines"
{
    DelayedInsert = true;
    APIVersion = 'v2.0';
    APIPublisher = 'eOneSolutions';
    APIGroup = 'ConnectWise';
    EntityCaption = 'Purchase Invoice Line';
    EntitySetCaption = 'Purchase Invoice Lines';
    PageType = API;
    ODataKeyFields = SystemId;
    EntityName = 'purchaseInvoiceLine';
    EntitySetName = 'purchaseInvoiceLines';
    SourceTable = "Purchase Line";
    Extensible = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(SystemId; rec.SystemId) { Editable = false; }
                field(documentType; rec."Document Type") { }
                field(buyFromVendorNumber; rec."Buy-from Vendor No.") { }
                field(documentNumber; rec."Document No.") { }
                field(lineNumber; rec."Line No.") { }
                field(type; rec.Type) { }
                field(number; rec."No.")
                {

                    trigger OnValidate()
                    begin
                        EntityChanged := true;
                    end;
                }
                field(locationCode; rec."Location Code") { }
                field(postingGroup; rec."Posting Group") { }
                field(expectedReceiptDate; rec."Expected Receipt Date") { }
                field(description; rec.Description) { }
                field(description2; rec."Description 2") { }
                field(unitOfMeasure; rec."Unit of Measure") { }
                field(quantity; rec.Quantity) { }
                field(outstandingQuantity; rec."Outstanding Quantity") { }
                field(qtyToInvoice; rec."Qty. to Invoice") { }
                field(qtyToReceive; rec."Qty. to Receive") { }
                field(directUnitCost; rec."Direct Unit Cost") { }
                field(unitCostLcy; rec."Unit Cost (LCY)") { }
                field(vatPercent; rec."VAT %") { }
                field(lineDiscountPercent; rec."Line Discount %") { }
                field(lineDiscountAmount; rec."Line Discount Amount") { }
                field(amount; rec.Amount) { }
                field(amountIncludingVat; rec."Amount Including VAT") { }
                field(unitPriceLcy; rec."Unit Price (LCY)") { }
                field(allowInvoiceDisc; rec."Allow Invoice Disc.") { }
                field(grossWeight; rec."Gross Weight") { }
                field(netWeight; rec."Net Weight") { }
                field(unitsPerParcel; rec."Units per Parcel") { }
                field(unitVolume; rec."Unit Volume") { }
                field(applToItemEntry; rec."Appl.-to Item Entry") { }
                field(jobNumber; rec."Job No.") { }
                field(indirectCostPercent; rec."Indirect Cost %") { }
                field(recalculateInvoiceDisc; rec."Recalculate Invoice Disc.") { }
                field(outstandingAmount; rec."Outstanding Amount") { }
                field(qtyRcdNotInvoiced; rec."Qty. Rcd. Not Invoiced") { }
                field(amtRcdNotInvoiced; rec."Amt. Rcd. Not Invoiced") { }
                field(quantityReceived; rec."Quantity Received") { }
                field(quantityInvoiced; rec."Quantity Invoiced") { }
                field(receiptNumber; rec."Receipt No.")
                {
                    ApplicationArea = All;
                    Caption = 'Receipt No.', Locked = true;
                }
                field(receiptLineNumber; rec."Receipt Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Receipt Line No.', Locked = true;
                }
                field(profitPercent; rec."Profit %")
                {
                    ApplicationArea = All;
                    Caption = 'Profit %', Locked = true;
                }
                field(payToVendorNumber; rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                    Caption = 'Pay-to Vendor No.', Locked = true;
                }
                field(invDiscountAmount; rec."Inv. Discount Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Inv. Discount Amount', Locked = true;
                }
                field(vendorItemNumber; rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor Item No.', Locked = true;
                }
                field(salesOrderNumber; rec."Sales Order No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sales Order No.', Locked = true;
                }
                field(salesOrderLineNumber; rec."Sales Order Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sales Order Line No.', Locked = true;
                }
                field(dropShipment; rec."Drop Shipment")
                {
                    ApplicationArea = All;
                    Caption = 'Drop Shipment', Locked = true;
                }
                field(genBusPostingGroup; rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'Gen. Bus. Posting Group', Locked = true;
                }
                field(genProdPostingGroup; rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'Gen. Prod. Posting Group', Locked = true;
                }
                field(vatCalculationType; rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Calculation Type', Locked = true;
                }
                field(transactionType; rec."Transaction Type")
                {
                    ApplicationArea = All;
                    Caption = 'Transaction Type', Locked = true;
                }
                field(transportMethod; rec."Transport Method")
                {
                    ApplicationArea = All;
                    Caption = 'Transport Method', Locked = true;
                }
                field(attachedToLineNumber; rec."Attached to Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Attached to Line No.', Locked = true;
                }
                field(entryPoint; rec."Entry Point")
                {
                    ApplicationArea = All;
                    Caption = 'Entry Point', Locked = true;
                }
                field("area"; rec.Area)
                {
                    ApplicationArea = All;
                    Caption = 'Area', Locked = true;
                }
                field(transactionSpecification; rec."Transaction Specification")
                {
                    ApplicationArea = All;
                    Caption = 'Transaction Specification', Locked = true;
                }
                field(taxAreaCode; rec."Tax Area Code")
                {
                    ApplicationArea = All;
                    Caption = 'Tax Area Code', Locked = true;
                }
                field(taxLiable; rec."Tax Liable")
                {
                    ApplicationArea = All;
                    Caption = 'Tax Liable', Locked = true;
                }
                field(taxGroupCode; rec."Tax Group Code")
                {
                    ApplicationArea = All;
                    Caption = 'Tax Group Code', Locked = true;
                }
                field(useTax; rec."Use Tax")
                {
                    ApplicationArea = All;
                    Caption = 'Use Tax', Locked = true;
                }
                field(vatBusPostingGroup; rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Bus. Posting Group', Locked = true;
                }
                field(vatProdPostingGroup; rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Prod. Posting Group', Locked = true;
                }
                field(currencyCode; rec."Currency Code")
                {
                    ApplicationArea = All;
                    Caption = 'Currency Code', Locked = true;
                }
                field(outstandingAmountLcy; rec."Outstanding Amount (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Outstanding Amount (LCY)', Locked = true;
                }
                field(amtRcdNotInvoicedLcy; rec."Amt. Rcd. Not Invoiced (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Amt. Rcd. Not Invoiced (LCY)', Locked = true;
                }
                field(reservedQuantity; rec."Reserved Quantity")
                {
                    ApplicationArea = All;
                    Caption = 'Reserved Quantity', Locked = true;
                }
                field(blanketOrderNumber; rec."Blanket Order No.")
                {
                    ApplicationArea = All;
                    Caption = 'Blanket Order No.', Locked = true;
                }
                field(blanketOrderLineNumber; rec."Blanket Order Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Blanket Order Line No.', Locked = true;
                }
                field(vatBaseAmount; rec."VAT Base Amount")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Base Amount', Locked = true;
                }
                field(unitCost; rec."Unit Cost")
                {
                    ApplicationArea = All;
                    Caption = 'Unit Cost', Locked = true;
                }
                field(systemCreatedEntry; rec."System-Created Entry")
                {
                    ApplicationArea = All;
                    Caption = 'System-Created Entry', Locked = true;
                }
                field(lineAmount; rec."Line Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Line Amount', Locked = true;
                }
                field(vatDifference; rec."VAT Difference")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Difference', Locked = true;
                }
                field(invDiscAmountToInvoice; rec."Inv. Disc. Amount to Invoice")
                {
                    ApplicationArea = All;
                    Caption = 'Inv. Disc. Amount to Invoice', Locked = true;
                }
                field(vatIdentifier; rec."VAT Identifier")
                {
                    ApplicationArea = All;
                    Caption = 'VAT Identifier', Locked = true;
                }
                field(icPartnerRefType; rec."IC Partner Ref. Type")
                {
                    ApplicationArea = All;
                    Caption = 'IC Partner Ref. Type', Locked = true;
                }
                field(icPartnerReference; rec."IC Partner Reference")
                {
                    ApplicationArea = All;
                    Caption = 'IC Partner Reference', Locked = true;
                }
                field(prepaymentPercent; rec."Prepayment %")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment %', Locked = true;
                }
                field(prepmtLineAmount; rec."Prepmt. Line Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. Line Amount', Locked = true;
                }
                field(prepmtAmtInv; rec."Prepmt. Amt. Inv.")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. Amt. Inv.', Locked = true;
                }
                field(prepmtAmtInclVat; rec."Prepmt. Amt. Incl. VAT")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. Amt. Incl. VAT', Locked = true;
                }
                field(prepaymentAmount; rec."Prepayment Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment Amount', Locked = true;
                }
                field(prepmtVatBaseAmt; rec."Prepmt. VAT Base Amt.")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. VAT Base Amt.', Locked = true;
                }
                field(prepaymentVatPercent; rec."Prepayment VAT %")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment VAT %', Locked = true;
                }
                field(prepmtVatCalcType; rec."Prepmt. VAT Calc. Type")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. VAT Calc. Type', Locked = true;
                }
                field(prepaymentVatIdentifier; rec."Prepayment VAT Identifier")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment VAT Identifier', Locked = true;
                }
                field(prepaymentTaxAreaCode; rec."Prepayment Tax Area Code")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment Tax Area Code', Locked = true;
                }
                field(prepaymentTaxLiable; rec."Prepayment Tax Liable")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment Tax Liable', Locked = true;
                }
                field(prepaymentTaxGroupCode; rec."Prepayment Tax Group Code")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment Tax Group Code', Locked = true;
                }
                field(prepmtAmtToDeduct; rec."Prepmt Amt to Deduct")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt Amt to Deduct', Locked = true;
                }
                field(prepmtAmtDeducted; rec."Prepmt Amt Deducted")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt Amt Deducted', Locked = true;
                }
                field(prepaymentLine; rec."Prepayment Line")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment Line', Locked = true;
                }
                field(prepmtAmountInvInclVat; rec."Prepmt. Amount Inv. Incl. VAT")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. Amount Inv. Incl. VAT', Locked = true;
                }
                field(prepmtAmountInvLcy; rec."Prepmt. Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. Amount Inv. (LCY)', Locked = true;
                }
                field(icPartnerCode; rec."IC Partner Code")
                {
                    ApplicationArea = All;
                    Caption = 'IC Partner Code', Locked = true;
                }
                field(prepmtVatAmountInvLcy; rec."Prepmt. VAT Amount Inv. (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt. VAT Amount Inv. (LCY)', Locked = true;
                }
                field(prepaymentVatDifference; rec."Prepayment VAT Difference")
                {
                    ApplicationArea = All;
                    Caption = 'Prepayment VAT Difference', Locked = true;
                }
                field(prepmtVatDiffToDeduct; rec."Prepmt VAT Diff. to Deduct")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt VAT Diff. to Deduct', Locked = true;
                }
                field(prepmtVatDiffDeducted; rec."Prepmt VAT Diff. Deducted")
                {
                    ApplicationArea = All;
                    Caption = 'Prepmt VAT Diff. Deducted', Locked = true;
                }
                field(outstandingAmtExVatLcy; rec."Outstanding Amt. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Outstanding Amt. Ex. VAT (LCY)', Locked = true;
                }
                field(aRcdNotInvExVatLcy; rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'A. Rcd. Not Inv. Ex. VAT (LCY)', Locked = true;
                }
                field(jobTaskNumber; rec."Job Task No.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Task No.', Locked = true;
                }
                field(jobLineType; rec."Job Line Type")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Type', Locked = true;
                }
                field(jobUnitPrice; rec."Job Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'Job Unit Price', Locked = true;
                }
                field(jobTotalPrice; rec."Job Total Price")
                {
                    ApplicationArea = All;
                    Caption = 'Job Total Price', Locked = true;
                }
                field(jobLineAmount; rec."Job Line Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Amount', Locked = true;
                }
                field(jobLineDiscountAmount; rec."Job Line Discount Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Discount Amount', Locked = true;
                }
                field(jobLineDiscountPercent; rec."Job Line Discount %")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Discount %', Locked = true;
                }
                field(jobUnitPriceLcy; rec."Job Unit Price (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Job Unit Price (LCY)', Locked = true;
                }
                field(jobTotalPriceLcy; rec."Job Total Price (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Job Total Price (LCY)', Locked = true;
                }
                field(jobLineAmountLcy; rec."Job Line Amount (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Amount (LCY)', Locked = true;
                }
                field(jobLineDiscAmountLcy; rec."Job Line Disc. Amount (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Job Line Disc. Amount (LCY)', Locked = true;
                }
                field(jobCurrencyFactor; rec."Job Currency Factor")
                {
                    ApplicationArea = All;
                    Caption = 'Job Currency Factor', Locked = true;
                }
                field(jobCurrencyCode; rec."Job Currency Code")
                {
                    ApplicationArea = All;
                    Caption = 'Job Currency Code', Locked = true;
                }
                field(jobPlanningLineNumber; rec."Job Planning Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Planning Line No.', Locked = true;
                }
                field(jobRemainingQty; rec."Job Remaining Qty.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Remaining Qty.', Locked = true;
                }
                field(jobRemainingQtyBase; rec."Job Remaining Qty. (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Job Remaining Qty. (Base)', Locked = true;
                }
                field(deferralCode; rec."Deferral Code")
                {
                    ApplicationArea = All;
                    Caption = 'Deferral Code', Locked = true;
                }
                field(returnsDeferralStartDate; rec."Returns Deferral Start Date")
                {
                    ApplicationArea = All;
                    Caption = 'Returns Deferral Start Date', Locked = true;
                }
                field(prodOrderNumber; rec."Prod. Order No.")
                {
                    ApplicationArea = All;
                    Caption = 'Prod. Order No.', Locked = true;
                }
                field(variantCode; rec."Variant Code")
                {
                    ApplicationArea = Planning;
                    Caption = 'Variant Code', Locked = true;
                }
                field(binCode; rec."Bin Code")
                {
                    trigger OnValidate()
                    var
                        Item: Record Item;
                    begin
                        Item.Get(Rec."No.");
                        //handle scenarios where service items have a bin linked
                        if Item.IsInventoriableType() then
                            Rec."Bin Code" := BinCodeTxt
                        else
                            Rec."Bin Code" := '';
                    end;
                }
                field(qtyPerUnitOfMeasure; rec."Qty. per Unit of Measure")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. per Unit of Measure', Locked = true;
                }
                field(unitOfMeasureCode; "Unit of Measure Code")
                {
                    ApplicationArea = All;
                    Caption = 'Unit of Measure Code', Locked = true;
                }
                field(quantityBase; "Quantity (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Quantity (Base)', Locked = true;
                }
                field(outstandingQtyBase; "Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Outstanding Qty. (Base)', Locked = true;
                }
                field(qtyToInvoiceBase; "Qty. to Invoice (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. to Invoice (Base)', Locked = true;
                }
                field(qtyToReceiveBase; "Qty. to Receive (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. to Receive (Base)', Locked = true;
                }
                field(qtyRcdNotInvoicedBase; "Qty. Rcd. Not Invoiced (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. Rcd. Not Invoiced (Base)', Locked = true;
                }
                field(qtyReceivedBase; "Qty. Received (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. Received (Base)', Locked = true;
                }
                field(qtyInvoicedBase; "Qty. Invoiced (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. Invoiced (Base)', Locked = true;
                }
                field(reservedQtyBase; "Reserved Qty. (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Reserved Qty. (Base)', Locked = true;
                }
                field(faPostingDate; "FA Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'FA Posting Date', Locked = true;
                }
                field(faPostingType; "FA Posting Type")
                {
                    ApplicationArea = All;
                    Caption = 'FA Posting Type', Locked = true;
                }
                field(depreciationBookCode; "Depreciation Book Code")
                {
                    ApplicationArea = All;
                    Caption = 'Depreciation Book Code', Locked = true;
                }
                field(salvageValue; "Salvage Value")
                {
                    ApplicationArea = All;
                    Caption = 'Salvage Value', Locked = true;
                }
                field(deprUntilFaPostingDate; "Depr. until FA Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'Depr. until FA Posting Date', Locked = true;
                }
                field(deprAcquisitionCost; "Depr. Acquisition Cost")
                {
                    ApplicationArea = All;
                    Caption = 'Depr. Acquisition Cost', Locked = true;
                }
                field(maintenanceCode; "Maintenance Code")
                {
                    ApplicationArea = All;
                    Caption = 'Maintenance Code', Locked = true;
                }
                field(insuranceNumber; "Insurance No.")
                {
                    ApplicationArea = All;
                    Caption = 'Insurance No.', Locked = true;
                }
                field(budgetedFaNumber; "Budgeted FA No.")
                {
                    ApplicationArea = All;
                    Caption = 'Budgeted FA No.', Locked = true;
                }
                field(duplicateInDepreciationBook; "Duplicate in Depreciation Book")
                {
                    ApplicationArea = All;
                    Caption = 'Duplicate in Depreciation Book', Locked = true;
                }
                field(useDuplicationList; "Use Duplication List")
                {
                    ApplicationArea = All;
                    Caption = 'Use Duplication List', Locked = true;
                }
                field(responsibilityCenter; "Responsibility Center")
                {
                    ApplicationArea = All;
                    Caption = 'Responsibility Center', Locked = true;
                }
                field(itemReferenceNumber; "Item Reference No.")
                {
                    ApplicationArea = All;
                    Caption = 'Item Reference No.', Locked = true;
                    Tooltip = 'Specifies item reference number.';
                }
                field(itemRefUnitOfMeasure; "Item Reference Unit of Measure")
                {
                    ApplicationArea = All;
                    Caption = 'Item Reference Unit of Measure', Locked = true;
                    Tooltip = 'Specifies item reference unit of measure code.';
                }
                field(itemReferenceType; "Item Reference Type")
                {
                    ApplicationArea = All;
                    Caption = 'Item Reference Type', Locked = true;
                    Tooltip = 'Specifies item reference type.';
                }
                field(itemReferenceTypeNumber; "Item Reference Type No.")
                {
                    ApplicationArea = All;
                    Caption = 'Item Reference Type No.', Locked = true;
                    Tooltip = 'Specifies item reference type number.';
                }
                field(itemCategoryCode; "Item Category Code")
                {
                    ApplicationArea = All;
                    Caption = 'Item Category Code', Locked = true;
                }
                field(nonstock; Nonstock)
                {
                    ApplicationArea = All;
                    Caption = 'Catalog', Locked = true;
                }
                field(purchasingCode; "Purchasing Code")
                {
                    ApplicationArea = All;
                    Caption = 'Purchasing Code', Locked = true;
                }
                field(specialOrder; "Special Order")
                {
                    ApplicationArea = All;
                    Caption = 'Special Order', Locked = true;
                }
                field(specialOrderSalesNumber; "Special Order Sales No.")
                {
                    ApplicationArea = All;
                    Caption = 'Special Order Sales No.', Locked = true;
                }
                field(specialOrderSalesLineNumber; "Special Order Sales Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Special Order Sales Line No.', Locked = true;
                }
                field(whseOutstandingQtyBase; "Whse. Outstanding Qty. (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Whse. Outstanding Qty. (Base)', Locked = true;
                }
                field(completelyReceived; "Completely Received")
                {
                    ApplicationArea = All;
                    Caption = 'Completely Received', Locked = true;
                }
                field(requestedReceiptDate; "Requested Receipt Date")
                {
                    ApplicationArea = All;
                    Caption = 'Requested Receipt Date', Locked = true;
                }
                field(promisedReceiptDate; "Promised Receipt Date")
                {
                    ApplicationArea = All;
                    Caption = 'Promised Receipt Date', Locked = true;
                }
                field(leadTimeCalculation; "Lead Time Calculation")
                {
                    ApplicationArea = All;
                    Caption = 'Lead Time Calculation', Locked = true;
                }
                field(inboundWhseHandlingTime; "Inbound Whse. Handling Time")
                {
                    ApplicationArea = All;
                    Caption = 'Inbound Whse. Handling Time', Locked = true;
                }
                field(plannedReceiptDate; "Planned Receipt Date")
                {
                    ApplicationArea = All;
                    Caption = 'Planned Receipt Date', Locked = true;
                }
                field(orderDate; "Order Date")
                {
                    ApplicationArea = All;
                    Caption = 'Order Date', Locked = true;
                }
                field(allowItemChargeAssignment; "Allow Item Charge Assignment")
                {
                    ApplicationArea = All;
                    Caption = 'Allow Item Charge Assignment', Locked = true;
                }
                field(qtyToAssign; "Qty. to Assign")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. to Assign', Locked = true;
                }
                field(qtyAssigned; "Qty. Assigned")
                {
                    ApplicationArea = All;
                    Caption = 'Qty. Assigned', Locked = true;
                }
                field(returnQtyToShip; "Return Qty. to Ship")
                {
                    ApplicationArea = All;
                    Caption = 'Return Qty. to Ship', Locked = true;
                }
                field(returnQtyToShipBase; "Return Qty. to Ship (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Return Qty. to Ship (Base)', Locked = true;
                }
                field(returnQtyShippedNotInvd; "Return Qty. Shipped Not Invd.")
                {
                    ApplicationArea = All;
                    Caption = 'Return Qty. Shipped Not Invd.', Locked = true;
                }
                field(retQtyShpdNotInvdBase; "Ret. Qty. Shpd Not Invd.(Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Ret. Qty. Shpd Not Invd.(Base)', Locked = true;
                }
                field(returnShpdNotInvd; "Return Shpd. Not Invd.")
                {
                    ApplicationArea = All;
                    Caption = 'Return Shpd. Not Invd.', Locked = true;
                }
                field(returnShpdNotInvdLcy; "Return Shpd. Not Invd. (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Return Shpd. Not Invd. (LCY)', Locked = true;
                }
                field(returnQtyShipped; "Return Qty. Shipped")
                {
                    ApplicationArea = All;
                    Caption = 'Return Qty. Shipped', Locked = true;
                }
                field(returnQtyShippedBase; "Return Qty. Shipped (Base)")
                {
                    ApplicationArea = All;
                    Caption = 'Return Qty. Shipped (Base)', Locked = true;
                }
                field(returnShipmentNumber; "Return Shipment No.")
                {
                    ApplicationArea = All;
                    Caption = 'Return Shipment No.', Locked = true;
                }
                field(returnShipmentLineNumber; "Return Shipment Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Return Shipment Line No.', Locked = true;
                }
                field(returnReasonCode; "Return Reason Code")
                {
                    ApplicationArea = All;
                    Caption = 'Return Reason Code', Locked = true;
                }
                field(subtype; Subtype)
                {
                    ApplicationArea = All;
                    Caption = 'Subtype', Locked = true;
                }
                field(routingNumber; "Routing No.")
                {
                    ApplicationArea = All;
                    Caption = 'Routing No.', Locked = true;
                }
                field(operationNumber; "Operation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Operation No.', Locked = true;
                }
                field(workCenterNumber; "Work Center No.")
                {
                    ApplicationArea = All;
                    Caption = 'Work Center No.', Locked = true;
                }
                field(finished; Finished)
                {
                    ApplicationArea = All;
                    Caption = 'Finished', Locked = true;
                }
                field(prodOrderLineNumber; "Prod. Order Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Prod. Order Line No.', Locked = true;
                }
                field(overheadRate; "Overhead Rate")
                {
                    ApplicationArea = All;
                    Caption = 'Overhead Rate', Locked = true;
                }
                field(mpsOrder; "MPS Order")
                {
                    ApplicationArea = All;
                    Caption = 'MPS Order', Locked = true;
                }
                field(planningFlexibility; "Planning Flexibility")
                {
                    ApplicationArea = All;
                    Caption = 'Planning Flexibility', Locked = true;
                }
                field(safetyLeadTime; "Safety Lead Time")
                {
                    ApplicationArea = All;
                    Caption = 'Safety Lead Time', Locked = true;
                }
                field(routingReferenceNumber; "Routing Reference No.")
                {
                    ApplicationArea = All;
                    Caption = 'Routing Reference No.', Locked = true;
                }
                field(connectwiseId; Rec."ConnectWise id") { }
                field(shortcutDimension1Code; rec."Shortcut Dimension 1 Code") { }
                field(shortcutDimension2Code; rec."Shortcut Dimension 2 Code") { }
                field(shortcutDim3Code; rec."SSCW ShortcutDim3Code") { }
                field(shortcutDim4Code; rec."SSCW ShortcutDim4Code") { }
                field(shortcutDim5Code; rec."SSCW ShortcutDim5Code") { }
                field(shortcutDim6Code; rec."SSCW ShortcutDim6Code") { }
                field(shortcutDim7Code; rec."SSCW ShortcutDim7Code") { }
                field(shortcutDim8Code; rec."SSCW ShortcutDim8Code") { }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        if InsertExtendedText() then
            exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    begin
        if EntityChanged then
            if InsertExtendedText() then
                exit(false);
    end;

    var
        EntityChanged: Boolean;
        BinCodeTxt: Text;

    local procedure InsertExtendedText(): Boolean
    var
        PurchaseLine: Record "Purchase Line";
        TransferExtendedText: Codeunit "Transfer Extended Text";
    begin
        if TransferExtendedText.PurchCheckIfAnyExtText(Rec, false) then begin
            if PurchaseLine.Get(Rec."Document Type", Rec."Document No.", Rec."Line No.") then
                Rec.Modify(true)
            else
                Rec.Insert(true);
            Commit();
            TransferExtendedText.InsertPurchExtText(Rec);
            exit(true);
        end;
        exit(false);
    end;
}