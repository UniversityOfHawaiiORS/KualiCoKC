package org.kuali.coeus.propdev.impl.budget;

import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.common.budget.framework.summary.BudgetSummaryService;
import org.kuali.coeus.propdev.impl.budget.core.ProposalBudgetForm;
import org.kuali.rice.krad.uif.UifParameters;
import org.kuali.rice.krad.uif.element.Action;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import static org.kuali.coeus.propdev.impl.budget.core.ProposalBudgetConstants.KradConstants.*;
import static org.kuali.coeus.propdev.impl.core.ProposalDevelopmentConstants.KradConstants.NEXT_PAGE_ARG;

@Component("proposalBudgetNavigationService")
public class ProposalBudgetNavigationServiceImpl implements  ProposalBudgetNavigationService {

    @Autowired
    @Qualifier("budgetSummaryService")
    private BudgetSummaryService budgetSummaryService;

    public void createNavigationLink(Action action, ProposalBudgetForm form, String direction) {
        String navigateToPageId = "";
        String methodToCall = "";
        String pageId = form.getPageId();
        if (StringUtils.isEmpty(pageId)) {
            pageId = PERIODS_AND_TOTALS_PAGE_ID;
        }
        boolean next = StringUtils.equals(direction,NEXT_PAGE_ARG);
        switch (pageId) {
            case PERIODS_AND_TOTALS_PAGE_ID :
                navigateToPageId = next?getPeriodsPageNextPageId(form):"";
                break;
            case RATES_PAGE_ID :
                navigateToPageId = next?getRatesPageNextPageId(form):PERIODS_AND_TOTALS_PAGE_ID;
                break;
            case PERSONNEL_PAGE_ID :
                navigateToPageId = next?ASSIGN_PERSONNEL_PAGE_ID:PERIODS_AND_TOTALS_PAGE_ID;
                break;
            case ASSIGN_PERSONNEL_PAGE_ID :
                navigateToPageId = next?NON_PERSONNEL_PAGE_ID:PERSONNEL_PAGE_ID;
                break;
            case NON_PERSONNEL_PAGE_ID :
                navigateToPageId = next? canGeneratePeriods(form)?"":SUBAWARD_PAGE_ID:ASSIGN_PERSONNEL_PAGE_ID;
                methodToCall = next && canGeneratePeriods(form)?"readyGeneratePeriod":"";
                break;
            case SUBAWARD_PAGE_ID :
                navigateToPageId = next?getSubawardNextPageId(form):getSubawardPreviousPageId(form);
                break;
            case COST_SHARING_PAGE_ID :
                navigateToPageId = next?getCostShareNextPageId(form):getCostSharePreviousPageId(form);
                break;
            case UNRECOVERED_PAGE_ID :
                navigateToPageId = next?getUnrecoveredNextPageId(form):getUnrecoveredPreviousPageId(form);
                break;
            case PROJECT_INCOME_PAGE_ID :
                navigateToPageId = next?SUMMARY_PAGE_ID:getModularPreviousPageId(form);
                break;
            case MODULAR_PAGE_ID :
                navigateToPageId = next?SUMMARY_PAGE_ID:getModularPreviousPageId(form);
                break;
            case NOTES_PAGE_ID :
                navigateToPageId = next?SUMMARY_PAGE_ID:getOtherPreviousPageId(form);
                break;
            case SUMMARY_PAGE_ID :
                navigateToPageId = next?"":getOtherPreviousPageId(form);
                break;

        }
        createAction(action,navigateToPageId,methodToCall);
    }

    protected void createAction(Action action, String navigateToPageId, String methodToCall) {
        if (StringUtils.isNotEmpty(methodToCall)) {
            action.setMethodToCall(methodToCall);
        }
       if (StringUtils.isNotEmpty(navigateToPageId)) {
            action.getActionParameters().put(UifParameters.NAVIGATE_TO_PAGE_ID, navigateToPageId);
       }
       if (StringUtils.isEmpty(navigateToPageId) && StringUtils.isEmpty(methodToCall)) {
           action.setRender(false);
       }
    }

    protected boolean canGeneratePeriods(ProposalBudgetForm form) {
        if (!form.getBudget().getBudgetPeriods().isEmpty() &&
                form.getBudget().getBudgetPeriod(0).getBudgetLineItems().isEmpty()) {
            return false;
        }
        for (int i=1; i<form.getBudget().getBudgetPeriods().size(); i++) {
            if (getBudgetSummaryService().budgetLineItemExists(form.getBudget(), i)) {
                return false;
            }
        }
        return true;
    }

    protected String getPeriodsPageNextPageId(ProposalBudgetForm form) {
            if (!form.getBudget().getBudgetLineItems().isEmpty()) {
                return PERSONNEL_PAGE_ID;
            }
            else if (form.isCostSharingEditFormVisible()) {
                return COST_SHARING_PAGE_ID;
            }
            else if (form.isUnrecoveredFandAEditFormVisible()) {
                return UNRECOVERED_PAGE_ID;
            }
            else if (form.getBudget().getModularBudgetFlag()) {
                return MODULAR_PAGE_ID;
            }
            return SUMMARY_PAGE_ID;
    }

    protected String getRatesPageNextPageId(ProposalBudgetForm form) {
            if (!form.getBudget().getBudgetLineItems().isEmpty()) {
                return PERSONNEL_PAGE_ID;
            }
            return SUMMARY_PAGE_ID;

    }

    protected String getSubawardNextPageId(ProposalBudgetForm form) {
        if (form.isCostSharingEditFormVisible()) {
            return COST_SHARING_PAGE_ID;
        }
        else if (form.isUnrecoveredFandAEditFormVisible()) {
            return UNRECOVERED_PAGE_ID;
        }
        else if (form.getBudget().getModularBudgetFlag()) {
            return MODULAR_PAGE_ID;
        }
        return SUMMARY_PAGE_ID;
    }

    protected String getSubawardPreviousPageId(ProposalBudgetForm form) {
        if (!form.getBudget().getBudgetLineItems().isEmpty()) {
            return NON_PERSONNEL_PAGE_ID;
        }
        return PERIODS_AND_TOTALS_PAGE_ID;

    }

    protected String getCostShareNextPageId(ProposalBudgetForm form) {
        if (form.isUnrecoveredFandAEditFormVisible()) {
            return UNRECOVERED_PAGE_ID;
        }
        else if (form.getBudget().getModularBudgetFlag()) {
            return MODULAR_PAGE_ID;
        }
        return SUMMARY_PAGE_ID;
    }

    protected String getCostSharePreviousPageId(ProposalBudgetForm form) {
        if (!form.getBudget().getBudgetLineItems().isEmpty()) {
            return SUBAWARD_PAGE_ID;
        }
        return PERIODS_AND_TOTALS_PAGE_ID;
    }

    protected String getUnrecoveredNextPageId(ProposalBudgetForm form) {
        if (form.getBudget().getModularBudgetFlag()) {
            return MODULAR_PAGE_ID;
        }
        return SUMMARY_PAGE_ID;
    }

    protected String getUnrecoveredPreviousPageId(ProposalBudgetForm form) {
        if (form.isCostSharingEditFormVisible()) {
            return COST_SHARING_PAGE_ID;
        }
        else if (!form.getBudget().getBudgetLineItems().isEmpty()) {
            return SUBAWARD_PAGE_ID;
        }
        return PERIODS_AND_TOTALS_PAGE_ID;
    }

    protected String getModularPreviousPageId(ProposalBudgetForm form) {
     if (form.isUnrecoveredFandAEditFormVisible()) {
            return UNRECOVERED_PAGE_ID;
        }
        else if (form.isCostSharingEditFormVisible()) {
            return COST_SHARING_PAGE_ID;
        }
        else if (!form.getBudget().getBudgetLineItems().isEmpty()) {
            return SUBAWARD_PAGE_ID;
        }
        return PERIODS_AND_TOTALS_PAGE_ID;
    }

    protected String getOtherPreviousPageId(ProposalBudgetForm form) {
        if (form.getBudget().getModularBudgetFlag()) {
            return MODULAR_PAGE_ID;
        }
        else if (form.isUnrecoveredFandAEditFormVisible()) {
            return UNRECOVERED_PAGE_ID;
        }
        else if (form.isCostSharingEditFormVisible()) {
            return COST_SHARING_PAGE_ID;
        }
        else if (!form.getBudget().getBudgetLineItems().isEmpty()) {
            return SUBAWARD_PAGE_ID;
        }
        return PERIODS_AND_TOTALS_PAGE_ID;

    }

    public BudgetSummaryService getBudgetSummaryService() {
        return budgetSummaryService;
    }

    public void setBudgetSummaryService(BudgetSummaryService budgetSummaryService) {
        this.budgetSummaryService = budgetSummaryService;
    }
}

