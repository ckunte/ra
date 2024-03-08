// Typst template for a (residential) rental agreement
// by C Kunte, March 2024
#let lease_agreement(title, doc) = {
  set page(
    paper: "a4",
    margin: (bottom: 1.75cm, top: 2.00cm, left: 1.75cm, right: 1.75cm),
    numbering: "1",
    header: align(
      right + horizon,
      title
    ),
  )
  // Configure paragraph properties
  set par(leading: 0.65em, first-line-indent: 12pt, justify: true)
  show par: set block(spacing: 0.65em)
  set text(
    font: "New Computer Moden", // Source serif Pro
    top-edge: "cap-height", 
    bottom-edge: "baseline",
    number-type: "old-style",
    size: 10pt,
  )
  // Document in two columns
  columns(2, doc)
}

// Rental Agreement Details (rad)
// Parties and Date of commencement -> PLEASE INPUT / EDIT / UPDATE
#let rad = (
  // lessor's details
  lessor: [
    #smallcaps[_[lessor's name]_], 
    aged _[lessor's age]_, 
    pan: _[lessor's pan]_,
    residing at _[lessor's address]_
  ],
  // property details
  property: [
    _[propery]_
  ],
  // lessee's details
  lessee: [
    #smallcaps[_[lessee's name]_],
    aged _[lessee's age]_, 
    pan: _[lessee's pan]_,
    residing at
  ],
  dtc: [_[start date]_],
  dte: [_[end date]_],
  rent: [_[rent/mo.]_],
  depo: [_[deposit]_],
  city: [_[city]_],
  state: [_[state]_]
)
#let (lessor, lessee, property, dtc, dte, rent, depo, city, state) = rad
//
#show: doc => lease_agreement(
  [Lease Agreement],
  doc,
)
#show heading: it => {
  set block(below: 10pt)
  set text(weight: "regular")
  align(left, smallcaps(it))
}
// BODY OF LEASE AGREEMENT TEXT FROM HERE-ON
= #h(1fr) Lease Agreement #h(1fr)

This agreement is made on #datetime.today().display("[month repr:long] [day], [year]") in #city, #state

#v(1%)
#h(1fr) #smallcaps[between] #h(1fr)
#v(1%)

#lessor (hereinafter referred to as the "#smallcaps[lessor]") which expression shall, unless repugnant to the context, mean and include their heirs, executors, and permitted assigns;

#v(1%)
#h(1fr) #smallcaps[and] #h(1fr)
#v(1%)

#lessee #property (hereinafter referred to as the "#smallcaps[lessee]") which expression shall, unless repugnant to the context, mean and include their heirs, executors, and permitted assigns.

The said #smallcaps[lessor] is the absolute landlord of the Property: #property (hereinafter referred to as "#smallcaps[property]"), and the above said #smallcaps[lessee] has contacted the #smallcaps[lessor] to rent the #smallcaps[property], and #smallcaps[lessor] has agreed to let-out the #smallcaps[property] to the above #smallcaps[lessee] on the below given terms and conditions.

#smallcaps[now, this deed further witnesseth and agreed by and between the said parties is as follows]:

== Lease term

The term of this agreement shall be for _eleven (11) months_, commencing from *#dtc* and ending on *#dte*.

== Rent and security deposit

The rent for the #smallcaps[property] is *#rent*. The #smallcaps[lessee] agrees to pay this rent on or before the #smallcaps[fifth] day of each month.

A security deposit of Rs #depo (_Rupees #depo in words_) only has been paid by the #smallcaps[lessee] to the #smallcaps[lessor], and this amount will carry no interest. The security deposit shall be refunded by the #smallcaps[lessor] at the end of the lease term, subject to deductions for any damages and/or outstanding dues.

== Utilities and maintenance

The #smallcaps[lessee] will be responsible for paying utility bills including electricity, water, gas, and any other applicable charges to the respective utility and services companies in a timely manner.

The #smallcaps[lessee] will be responsible for paying maintenance charges to the management of society within which the property is a part of. 

The #smallcaps[lessee] shall further be responsible for any increases in maintenance charges applicable during the tenancy period.

The #smallcaps[lessee] shall maintain the property in good condition and shall be responsible for any damages caused beyond the normal wear and tear. 

The #smallcaps[lessor] shall be responsible for regular maintenance and repairs, including plumbing, electrical, and structural maintenance.

== Use of property and premises

The property shall be used solely for residential purposes by the #smallcaps[lessee].

Subletting, assigning, or transferring the property to any third party, in whole or in part, without the prior written consent of the #smallcaps[lessor] is strictly prohibited.

The #smallcaps[lessee] shall not use the premises for any illegal, immoral, or commercial purposes. 

The #smallcaps[lessee] shall not engage in any activity that might cause a nuisance or disturbance to neighbours.

== Termination and notice

Either party may terminate this agreement by providing 30 days prior written notice to the other party through any suitable channel. 

Upon termination, the #smallcaps[lessee] shall return the property in the same condition as at the beginning of the tenancy, minus normal wear and tear.

== Repairs and alterations

The #smallcaps[lessee] shall promptly inform the #smallcaps[lessor] of any necessary repairs or maintenance issues. 

The #smallcaps[lessee] shall not make any structural alterations or modifications to the property without the written consent of the #smallcaps[lessor].

== Entry and inspection

The #smallcaps[lessor] has the right to enter the property with prior notice to inspect its condition and/or make repairs. The #smallcaps[lessor] shall provide reasonable notice, viz., 48 hours, except in cases of emergencies.

== Default and eviction

Failure to make regular rent payments or violation of terms can result in eviction.

The #smallcaps[lessor] will be within their right to evict the #smallcaps[lessee] without the issuance of any legal notice.

== Furnishings and appliances

The #smallcaps[lessee] shall be responsible for the reasonable care and maintenance of provided furnishings and appliances.

== Renewal of agreement

If both parties agree, then this #smallcaps[agreement] may be renewed for another term subject to updated terms and conditions. 
Renewal terms and any rent adjustments should be discussed and agreed-upon in writing prior to the renewal date.

== Notice of absence

The #smallcaps[lessee] shall provide the #smallcaps[lessor] with written notice if they plan to be away from the premises for an extended period.

== Dispute resolution

In case of any disputes or disagreements, both parties shall first attempt to resolve the matter amicably through negotiation. If unresolved, mediation or arbitration can be pursued before pursuing legal action.

== Force majeure

In the event that either party is unable to fulfill its obligations due to circumstances beyond their control (such as acts of God, natural disasters, government actions), the affected party shall be excused from such obligations during the period of disruption.

== Indemnity

The #smallcaps[lessee] shall indemnify and hold the #smallcaps[lessor] harmless from any claims, damages, or liabilities arising from the #smallcaps[lessee]'s use of the premises.

== Notices

All notices and communications shall be in writing and shall be deemed properly delivered if sent via registered post or other medium as per the convenience of both parties.

In Witness Whereof, the Parties hereto have set their hands and signatures on the date and year first above mentioned.

#v(9%)
#line(length: 100%)
The #smallcaps[lessor]'s signature #h(1fr) The #smallcaps[lessee]'s signature
#v(9%)

#line(length: 100%)
Witness(1) #h(1fr) Witness(2)

#v(3%)

$ - * - $

= Schedule

#lorem(20)

#lorem(15)