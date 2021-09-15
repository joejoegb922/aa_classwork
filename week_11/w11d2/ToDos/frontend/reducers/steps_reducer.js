import { object } from "prop-types";
import { RECEIVE_STEPS } from "../actions/step_actions";
import { RECEIVE_STEP } from "../actions/step_actions";
import { REMOVE_STEP} from "../actions/step_actions";

const stepsReducer = (state = {}, action) => {

    const newState = Object.assign({}, state);
    switch (action.type) { 
        case RECEIVE_STEPS:
            // debugger
            for (let i = 0; i < action.steps.length; i++) {
                newState[action.steps[i].id] = action.steps[i];
            }
            return newState;
        case RECEIVE_STEP:
            newState[action.step.id] = action.step;
            return newState;
        case REMOVE_STEP:
            delete newState[action.step.id];
            return newState;
        default:
            return state;
    }
};

export default stepsReducer;
