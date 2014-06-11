/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.s2s.generator.impl;

import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document;
import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document.PHS398CoverPageSupplement14;
import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document.PHS398CoverPageSupplement14.ClinicalTrial;
import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document.PHS398CoverPageSupplement14.ContactPersonInfo;
import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document.PHS398CoverPageSupplement14.PDPI;
import gov.grants.apply.forms.phs398CoverPageSupplement14V14.PHS398CoverPageSupplement14Document.PHS398CoverPageSupplement14.StemCells;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType;
import gov.grants.apply.system.globalLibraryV20.YesNoDataType.Enum;
import org.apache.xmlbeans.XmlObject;
import org.kuali.coeus.common.api.question.AnswerContract;
import org.kuali.coeus.common.api.question.AnswerHeaderContract;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.propdev.impl.person.ProposalPerson;
import org.kuali.kra.s2s.generator.bo.DepartmentalPerson;
import org.kuali.kra.s2s.util.S2SConstants;

import java.util.List;

/**
 * Class for generating the XML object for grants.gov
 * PHS398CoverPageSupplementV1_3. Form is generated using XMLBean classes and is
 * based on PHS398CoverPageSupplement schema.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class PHS398CoverPageSupplementV1_4Generator extends
		PHS398CoverPageSupplementBaseGenerator {
    
    List<? extends AnswerHeaderContract> answerHeaders;

	/**
	 * 
	 * This method gives information of Cover Page Supplement such as PDPI
	 * details,Clinical Trail information,Contact person information.
	 * 
	 * @return coverPageSupplementDocument {@link XmlObject} of type
	 *         PHS398CoverPageSupplement14Document.
	 */
	private PHS398CoverPageSupplement14Document getCoverPageSupplement() {
		PHS398CoverPageSupplement14Document coverPageSupplementDocument = PHS398CoverPageSupplement14Document.Factory
				.newInstance();
		PHS398CoverPageSupplement14 coverPageSupplement = PHS398CoverPageSupplement14.Factory
				.newInstance();
		answerHeaders = getPropDevQuestionAnswerService().getQuestionnaireAnswerHeaders(pdDoc.getDevelopmentProposal().getProposalNumber());
		coverPageSupplement.setFormVersion(S2SConstants.FORMVERSION_1_4);
		coverPageSupplement.setPDPI(getPDPI());
		coverPageSupplement.setClinicalTrial(getClinicalTrial());
		coverPageSupplement.setContactPersonInfo(getContactPersonInfo());
		StemCells stemCells = getStemCells();
		coverPageSupplement.setStemCells(stemCells);
		coverPageSupplementDocument
				.setPHS398CoverPageSupplement14(coverPageSupplement);
		return coverPageSupplementDocument;
	}

	/**
	 * 
	 * This method gives the personal details such as Name, New Investigator,
	 * Degrees of Principal Investigator
	 * 
	 * @return PDPI object containing Principal Investigator details.
	 */
	private PDPI getPDPI() {
		PDPI pdpi = PDPI.Factory.newInstance();
		ProposalPerson PI = s2sUtilService.getPrincipalInvestigator(pdDoc);
		pdpi.setPDPIName(globLibV20Generator.getHumanNameDataType(PI));
		return pdpi;
	}
	


	/**
	 * 
	 * This method is used to get Clinical Trial information
	 * 
	 * @return ClinicalTrial object containing Clinical Trail Details.
	 */
	private ClinicalTrial getClinicalTrial() {

        ClinicalTrial clinicalTrial = ClinicalTrial.Factory.newInstance();
        String answer = null;
        String subAnswer = null;
          answer = getAnswer(IS_CLINICAL_TRIAL,answerHeaders);
        if (answer != null) {
            if (!answer.equals(NOT_ANSWERED)) {
                if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
                    clinicalTrial.setIsClinicalTrial(YesNoDataType.Y_YES);
                    subAnswer = getAnswer(PHASE_III_CLINICAL_TRIAL,answerHeaders);
                        if (subAnswer != null && !subAnswer.equals(NOT_ANSWERED)) {
                            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
                                clinicalTrial.setIsPhaseIIIClinicalTrial(YesNoDataType.Y_YES);   
                            } else {
                                clinicalTrial.setIsPhaseIIIClinicalTrial(YesNoDataType.N_NO);   
                            }
                        }else{
                        	clinicalTrial.setIsPhaseIIIClinicalTrial(null);   
                        }
                } else {
                    clinicalTrial.setIsClinicalTrial(YesNoDataType.N_NO);
                }
            }
        }
        return clinicalTrial;
    }

	/**
	 * 
	 * This method gives the Contact person information such as contact
	 * Name,Phone,Fax,EmailAddress,Title,Address.
	 * 
	 * @return ContactPersonInfo object containing contact person details.
	 */
	private ContactPersonInfo getContactPersonInfo() {
		ContactPersonInfo contactPersonInfo = ContactPersonInfo.Factory
				.newInstance();
        DepartmentalPerson person = s2sUtilService.getContactPerson(pdDoc);
        contactPersonInfo.setContactName(globLibV20Generator
                .getHumanNameDataType(person));
        contactPersonInfo.setContactPhone(person.getOfficePhone());
        if (person.getFaxNumber() != null
                && !person.getFaxNumber().equals("")) {
            contactPersonInfo.setContactFax(person.getFaxNumber());
        }
        if (person.getEmailAddress() != null
                && !person.getEmailAddress().equals("")) {
            contactPersonInfo.setContactEmail(person
                    .getEmailAddress());
        }
        contactPersonInfo.setContactTitle(person.getPrimaryTitle());
        contactPersonInfo.setContactAddress(globLibV20Generator
                .getAddressDataType(person));
		return contactPersonInfo;
	}

	/**
	 * 
	 * This method is used to get information of Stem Cells for the form
	 * PHS398CoverPage
	 * 
	 * @return StemCells object containing information about Human stem Cells
	 *         involvement.
	 */
	private StemCells getStemCells() {

	    StemCells stemCells = StemCells.Factory.newInstance();  
	    Enum answers = YesNoDataType.N_NO;
	    String childAnswer = null;  
	    String answer = getAnswer(IS_HUMAN_STEM_CELLS_INVOLVED,answerHeaders);
	    if (answer != null) {
	        if (!answer.equals(NOT_ANSWERED)) {
	            answers = S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(getAnswer(IS_HUMAN_STEM_CELLS_INVOLVED,answerHeaders)) ? YesNoDataType.Y_YES : YesNoDataType.N_NO;
	            if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(answer)) {
	                stemCells.setIsHumanStemCellsInvolved(YesNoDataType.Y_YES);
	                String subAnswer = getAnswer(SPECIFIC_STEM_CELL_LINE,answerHeaders);
	                if (subAnswer != null) {
	                    if(!subAnswer.equals(NOT_ANSWERED)) {
	                        if (S2SConstants.PROPOSAL_YNQ_ANSWER_Y.equals(subAnswer)) {
	                            stemCells.setStemCellsIndicator(YesNoDataType.N_NO);
	                            childAnswer = getAnswers(REGISTRATION_NUMBER,answerHeaders);
	                        }
	                        else {
	                            stemCells.setStemCellsIndicator(YesNoDataType.Y_YES);
	                        }
	                    }
	                }
	                if (childAnswer != null) {
	                    if (S2SConstants.VALUE_UNKNOWN.equalsIgnoreCase(childAnswer)) {
	                        stemCells.setStemCellsIndicator(answers);
	                    } else {
	                        List<String> cellLines = getCellLines(childAnswer);
	                        if (cellLines.size() > 0) {
	                            stemCells.setCellLinesArray(cellLines.toArray(new String[0]));
	                        }
	                    }
	                }
	            } else {
	                stemCells.setIsHumanStemCellsInvolved(YesNoDataType.N_NO); 
	            }
	        }
	    }
	    return stemCells;
	}
	
	/**
	 * This method creates {@link XmlObject} of type
	 * {@link PHS398CoverPageSupplement14Document} by populating data from the
	 * given {@link ProposalDevelopmentDocument}
	 * 
	 * @param proposalDevelopmentDocument
	 *            for which the {@link XmlObject} needs to be created
	 * @return {@link XmlObject} which is generated using the given
	 *         {@link ProposalDevelopmentDocument}
	 * @see org.kuali.kra.s2s.generator.S2SFormGenerator#getFormObject(ProposalDevelopmentDocument)
	 */
	public XmlObject getFormObject(
			ProposalDevelopmentDocument proposalDevelopmentDocument) {
		this.pdDoc = proposalDevelopmentDocument;
		return getCoverPageSupplement();
	}
}