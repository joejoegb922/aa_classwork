import { object } from "prop-types";
import { RECEIVE_STEPS } from "../actions/step_actions";
import { RECEIVE_STEP } from "../actions/step_actions";
import { REMOVE_STEP} from "../actions/step_actions";

const stepsReducer = (state = initialState, action) => {

    const newState = Object.assign({}, state);
    switch (action.type) {
        case:
        
        default:
            return state;
    }
};

export default stepsReducer;
